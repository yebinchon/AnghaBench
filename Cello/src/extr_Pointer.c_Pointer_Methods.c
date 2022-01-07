
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Method {char* member_0; char* member_1; char* member_2; } ;



__attribute__((used)) static struct Method* Pointer_Methods(void) {

  static struct Method methods[] = {
    {
      "ref",
      "void ref(var self, var item);",
      "Set the object `self` to reference the object `item`."
    }, {
      "deref",
      "var deref(var self);",
      "Get the object referenced by `self`."
    }, {((void*)0), ((void*)0), ((void*)0)}
  };

  return methods;
}
