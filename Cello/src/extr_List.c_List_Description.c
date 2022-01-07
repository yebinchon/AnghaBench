
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char* List_Description(void) {
  return
    "The `List` type is a linked list data structure. Elements can be added "
    "and removed from the list and their memory is allocated and deallocated "
    "by the structure. Additionally destructors will be called on objects "
    "once removed."
    "\n\n"
    "Elements are copied into the List using `assign` and will initially have "
    "zero'd memory."
    "\n\n"
    "Lists can provide fast insertion and removal at arbitrary locations "
    "although most other operations will be slow due to having to traverse "
    "the linked list data structure."
    "\n\n"
    "This is largely equivalent to the C++ construct "
    "[std::list](http://www.cplusplus.com/reference/list/list/)";
}
