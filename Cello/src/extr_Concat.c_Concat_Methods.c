
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Method {char* member_0; char* member_1; char* member_2; } ;



__attribute__((used)) static struct Method* Concat_Methods(void) {

  static struct Method methods[] = {
    {
      "append",
      "void append(var self, var obj);",
      "Append the object `obj` to the object `self`."
    }, {
      "concat",
      "void concat(var self, var obj);",
      "Concatenate the object `obj` to the object `self`."
    }, {((void*)0), ((void*)0), ((void*)0)}
  };

  return methods;
}
