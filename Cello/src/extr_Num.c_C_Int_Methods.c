
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Method {char* member_0; char* member_1; char* member_2; } ;



__attribute__((used)) static struct Method* C_Int_Methods(void) {

  static struct Method methods[] = {
    {
      "c_int",
      "int64_t c_int(var self);",
      "Returns the object `self` represented as a `int64_t`."
    }, {((void*)0), ((void*)0), ((void*)0)}
  };

  return methods;
}
