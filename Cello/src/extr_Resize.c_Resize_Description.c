
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char* Resize_Description(void) {
  return
    "The `Resize` class can be implemented by objects which can be resized in "
    "some way. Resizing to a larger size than the current may allow for some "
    "resource or other to be preallocated or reserved. For example this class "
    "is implemented by `Array` and `Table` to either remove a number of items "
    "quickly or to preallocate memory space if it is known that many items are "
    "going to be added at a later date.";
}
