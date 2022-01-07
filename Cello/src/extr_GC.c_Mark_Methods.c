
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Method {char* member_0; char* member_1; char* member_2; } ;



__attribute__((used)) static struct Method* Mark_Methods(void) {

  static struct Method methods[] = {
    {
      "mark",
      "void mark(var self, var gc, void(*f)(var,void*));",
      "Mark the object `self` with the Garbage Collector `gc` and the callback "
      "function `f`."
    }, {((void*)0), ((void*)0), ((void*)0)}
  };

  return methods;
}
