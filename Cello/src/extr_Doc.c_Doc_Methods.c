
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Method {char* member_0; char* member_1; char* member_2; } ;



__attribute__((used)) static struct Method* Doc_Methods(void) {

  static struct Method methods[] = {
    {
      "name",
      "const char* name(var type);",
      "Return the name of a given `type`."
    }, {
      "brief",
      "const char* brief(var type);",
      "Return a brief description of a given `type`."
    }, {
      "description",
      "const char* description(var type);",
      "Return a longer description of a given `type`."
    }, {
      "definition",
      "const char* definition(var type);",
      "Return the C definition of a given `type`."
    }, {((void*)0), ((void*)0), ((void*)0)}
  };

  return methods;
}
