
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char* Iter_Description(void) {
  return
    "The `Iter` class is implemented by types which can be looped over. This "
    "allows them to be used in conjunction with the `foreach` macro as well "
    "as various other components of Cello."
    "\n\n"
    "To signal that an interation has finished an iteration should return the "
    "Cello object `Terminal`. Due to this - the `Terminal` object cannot be "
    "placed inside of Tuples because it artificially shortens their length.";
}
