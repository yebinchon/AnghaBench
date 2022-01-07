
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Method {char* member_0; char* member_1; char* member_2; } ;



__attribute__((used)) static struct Method* Range_Methods(void) {

  static struct Method methods[] = {
    {
      "range",
      "#define range(...)",
      "Construct a `Range` object on the stack."
    }, {((void*)0), ((void*)0), ((void*)0)}
  };

  return methods;
}
