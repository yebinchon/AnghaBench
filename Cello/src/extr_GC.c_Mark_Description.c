
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char* Mark_Description(void) {
  return
    "The `Mark` class can be overridden to customize the behaviour of the "
    "Cello Garbage Collector on encountering a given type. By default the "
    "allocated memory for a structure is scanned for pointers to other Cello "
    "objects, but if a type does its own memory allocation it may store "
    "pointers to Cello objects in other locations."
    "\n\n"
    "If this is the case the `Mark` class can be overridden and the callback "
    "function `f` must be called on all pointers which might be Cello objects "
    "which are managed by the class. Alternately the `mark` function can be "
    "called on any sub object to start a chain of recursive marking.";
}
