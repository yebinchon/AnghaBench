
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Method {char* member_0; char* member_1; char* member_2; } ;



__attribute__((used)) static struct Method* Len_Methods(void) {

  static struct Method methods[] = {
    {
      "len",
      "size_t len(var self);",
      "Returns the length of object `self`."
    }, {((void*)0), ((void*)0), ((void*)0)}
  };

  return methods;
}
