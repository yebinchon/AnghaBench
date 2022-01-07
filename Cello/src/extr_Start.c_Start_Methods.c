
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Method {char* member_0; char* member_1; char* member_2; } ;



__attribute__((used)) static struct Method* Start_Methods(void) {

  static struct Method methods[] = {
    {
      "with",
      "#define with(...)",
      "Perform operations in between `start` and `stop`."
    }, {
      "start",
      "void start(var self);",
      "Start the object `self`."
    }, {
      "stop",
      "void stop(var self);",
      "Stop the object `self`."
    }, {
      "join",
      "void join(var self);",
      "Block and wait for the object `self` to stop."
    }, {
      "running",
      "bool running(var self);",
      "Check if the object `self` is running."
    }, {((void*)0), ((void*)0), ((void*)0)}
  };

  return methods;
}
