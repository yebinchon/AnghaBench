
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char* Pointer_Description(void) {
  return
    "The `Pointer` class is implemented by types which act as references to "
    "other objects. Primarily this class is implemented by `Ref` and `Box` "
    "which provide the two main pointer types in Cello.";
}
