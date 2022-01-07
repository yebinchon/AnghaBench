
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Method {char* member_0; char* member_1; char* member_2; } ;



__attribute__((used)) static struct Method* Zip_Methods(void) {

  static struct Method methods[] = {
    {
      "zip",
      "#define zip(...)",
      "Construct a `Zip` object on the stack."
    }, {
      "enumerate",
      "#define enumerate(I)",
      "Zip the iterable `I` with a `Range` object of the same length."
    }, {((void*)0), ((void*)0), ((void*)0)}
  };

  return methods;
}
