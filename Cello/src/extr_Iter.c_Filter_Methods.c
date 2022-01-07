
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Method {char* member_0; char* member_1; char* member_2; } ;



__attribute__((used)) static struct Method* Filter_Methods(void) {

  static struct Method methods[] = {
    {
      "filter",
      "#define filter(I, F)",
      "Construct a `Filter` object on the stack over iterable `I` with "
      "filter function `F`."
    }, {((void*)0), ((void*)0), ((void*)0)}
  };

  return methods;
}
