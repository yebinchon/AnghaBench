
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Method {char* member_0; char* member_1; char* member_2; } ;



__attribute__((used)) static struct Method* Sort_Methods(void) {

  static struct Method methods[] = {
    {
      "sort",
      "void sort(var self);",
      "Sorts the object `self`."
    }, {
      "sort_by",
      "void sort_by(var self, bool(*f)(var,var));",
      "Sorts the object `self` using the function `f`."
    }, {((void*)0), ((void*)0), ((void*)0)}
  };

  return methods;
}
