
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Method {char* member_0; char* member_1; char* member_2; } ;



__attribute__((used)) static struct Method* Size_Methods(void) {

  static struct Method methods[] = {
    {
      "size",
      "size_t size(var type);",
      "Returns the associated size of a given `type` in bytes."
    }, {((void*)0), ((void*)0), ((void*)0)}
  };

  return methods;
}
