
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char* Zip_Description(void) {
  return
    "The `Zip` type can be used to combine multiple iterables into one which "
    "is then iterated over all at once and returned as a Tuple. The Zip object "
    "only iterates when all of it's sub iterators have valid items. More "
    "specifically the Zip iteration will terminate if _any_ of the sub "
    "iterators terminate.";
}
