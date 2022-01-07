
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char* Get_Description(void) {
  return
    "The `Get` class provides a method to _get_ or _set_ certain properties "
    "of an object using keys and value. Typically it is implemented by "
    "data lookup structures such as `Table` or `Map` but it is also used "
    "more generally such as using indices to look up items in `Array`, or "
    "as thread local storage for the `Thread` object.";
}
