
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Method {char* member_0; char* member_1; char* member_2; } ;



__attribute__((used)) static struct Method* Swap_Methods(void) {

  static struct Method methods[] = {
    {
      "swap",
      "void swap(var self, var obj);",
      "Swap the object `self` for the object `obj`."
    }, {((void*)0), ((void*)0), ((void*)0)}
  };

  return methods;
}
