
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Method {char* member_0; char* member_1; char* member_2; } ;



__attribute__((used)) static struct Method* Help_Methods(void) {

  static struct Method methods[] = {
    {
      "help",
      "void help(var self);\n"
      "int help_to(var out, int pos, var self);",
      "Print help information about the object `self` either to `stdout` or "
      "to the object `out` at some position `pos`."
    }, {((void*)0), ((void*)0), ((void*)0)}
  };

  return methods;
}
