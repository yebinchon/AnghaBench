
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Method {char* member_0; char* member_1; char* member_2; } ;



__attribute__((used)) static struct Method* Resize_Methods(void) {

  static struct Method methods[] = {
    {
      "resize",
      "void resize(var self, size_t n);",
      "Resize to some size `n`, perhaps reserving some resource for object "
      "`self`."
    }, {((void*)0), ((void*)0), ((void*)0)}
  };

  return methods;
}
