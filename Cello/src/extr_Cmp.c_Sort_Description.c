
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char* Sort_Description(void) {
  return
    "The `Sort` class can be implemented by types which can be sorted in some "
    "way such as `Array`. By default the sorting function uses the `lt` method "
    "to compare elements, but a custom function can also be provided.";
}
