
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char* New_Description(void) {
  return
    "The `New` class allows the user to define constructors and destructors "
    "for a type, accessible via `new` and `del`. Objects allocated with `new` "
    "are allocated on the heap and also registered with the Garbage Collector "
    "this means technically it isn't required to call `del` on them as they "
    "will be cleaned up at a later date."
    "\n\n"
    "The `new_root` function can be called to register a variable with the "
    "Garbage Collector but to indicate that it will be manually destructed "
    "with `del_root` by the user. This should be used for variables that wont "
    "be reachable by the Garbage Collector such as those in the data segment "
    "or only accessible via vanilla C structures."
    "\n\n"
    "The `new_raw` and `del_raw` functions can be called to construct and "
    "destruct objects without going via the Garbage Collector."
    "\n\n"
    "It is also possible to simply call the `construct` and `destruct` "
    "functions if you wish to construct an already allocated object."
    "\n\n"
    "Constructors should assume that memory is zero'd for an object but "
    "nothing else."
  ;
}
