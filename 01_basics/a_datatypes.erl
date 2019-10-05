-module(a_datatypes).
-export([woot/1]).

woot(R) ->
    receive
        loop ->
            io:format("loop"),
            woot(R);
        terminate ->
            io:format("term")
    end.
                
