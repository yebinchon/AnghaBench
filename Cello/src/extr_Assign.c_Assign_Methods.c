
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Method {char* member_0; char* member_1; char* member_2; } ;



__attribute__((used)) static struct Method* Assign_Methods(void) {

  static struct Method methods[] = {
    {
      "assign",
      "var assign(var self, var obj);",
      "Assign the object `obj` to the object `self`. The assigned object "
      "`self` is returned."
    }, {((void*)0), ((void*)0), ((void*)0)}
  };

  return methods;
}
