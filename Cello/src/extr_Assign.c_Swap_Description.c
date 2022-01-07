
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char* Swap_Description(void) {
  return
    "The `Swap` class can be used to override the behaviour of swapping two "
    "objects. By default the `Swap` class simply swaps the memory of the "
    "two objects passed in as parameters making use of the `Size` class. "
    "In almost all cases this default behaviour should be fine, even if the "
    "objects have custom assignment functions."
    "\n\n"
    "Swapping can be used internally by various collections and algorithms.";
}
