
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char* Len_Description(void) {
  return
    "The `Len` class can be implemented by any type that has a length "
    "associated with it. It is typically implemented by collections "
    "and is often used in conjunction with `Iter` or `Get`.";
}
