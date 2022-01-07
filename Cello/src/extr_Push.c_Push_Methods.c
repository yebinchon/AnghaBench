
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Method {char* member_0; char* member_1; char* member_2; } ;



__attribute__((used)) static struct Method* Push_Methods(void) {

  static struct Method methods[] = {
    {
      "push",
      "void push(var self, var obj);",
      "Push the object `obj` onto the top of object `self`."
    }, {
      "pop",
      "void pop(var self);",
      "Pop the top item from the object `self`."
    }, {
      "push_at",
      "void push_at(var self, var obj, var key);",
      "Push the object `obj` onto the object `self` at a given `key`."
    }, {
      "pop_at",
      "void pop_at(var self, var key);",
      "Pop the object from the object `self` at a given `key`."
    }, {((void*)0), ((void*)0), ((void*)0)}
  };

  return methods;
}
