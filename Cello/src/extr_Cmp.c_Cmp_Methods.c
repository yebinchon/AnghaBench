
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Method {char* member_0; char* member_1; char* member_2; } ;



__attribute__((used)) static struct Method* Cmp_Methods(void) {

  static struct Method methods[] = {
    {
      "cmp",
      "int cmp(var self, var obj);",
      "The return value of `cmp` is `< 0` if `self` is less than `obj`, `> 0` "
      "if `self` is greater than `obj` and `0` if they are equal."
    }, {
      "eq",
      "bool eq(var self, var obj);",
      "Returns true if the object `self` is equal to the object `obj`."
    }, {
      "neq",
      "bool neq(var self, var obj);",
      "Returns false if the object `self` is equal to the object `obj`."
    }, {
      "gt",
      "bool gt(var self, var obj);",
      "Returns true if the object `self` is greater than the object `obj`."
    }, {
      "lt",
      "bool lt(var self, var obj);",
      "Returns false if the object `self` is less than the object `obj`."
    }, {
      "ge",
      "bool ge(var self, var obj);",
      "Returns false if the object `self` is greater than or equal to the "
      "object `obj`."
    }, {
      "le",
      "bool le(var self, var obj);",
      "Returns false if the object `self` is less than or equal to the "
      "object `obj`."
    }, {((void*)0), ((void*)0), ((void*)0)}
  };

  return methods;
}
