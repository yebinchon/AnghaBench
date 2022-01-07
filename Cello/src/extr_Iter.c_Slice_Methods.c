
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Method {char* member_0; char* member_1; char* member_2; } ;



__attribute__((used)) static struct Method* Slice_Methods(void) {

  static struct Method methods[] = {
    {
      "slice",
      "#define slice(I, ...)",
      "Construct a `Slice` object on the stack over iterable `I`."
    }, {
      "reverse",
      "#define reverse(I)",
      "Construct a `Slice` object that iterates over iterable `I` in reverse "
      "order."
    }, {((void*)0), ((void*)0), ((void*)0)}
  };

  return methods;
}
