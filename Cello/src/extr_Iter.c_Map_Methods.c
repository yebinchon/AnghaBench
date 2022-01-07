
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Method {char* member_0; char* member_1; char* member_2; } ;



__attribute__((used)) static struct Method* Map_Methods(void) {

  static struct Method methods[] = {
    {
      "map",
      "#define map(I, F)",
      "Construct a `Map` object on the stack over iterable `I` applying "
      "function `F`."
    }, {((void*)0), ((void*)0), ((void*)0)}
  };

  return methods;
}
