
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char* Type_Description(void) {
  return
    "The `Type` type is one of the most important types in Cello. It is the "
    "object which specifies the meta-data associated with a particular object. "
    "Most importantly this says what classes an object implements and what "
    "their instances are."
    "\n\n"
    "One can get the type of an object using the `type_of` function."
    "\n\n"
    "To see if an object implements a class `implements` can be used. To "
    "call a member of a class with an object `method` can be used."
    "\n\n"
    "To see if a type implements a class `type_implements` can be used. To "
    "call a member of a class, implemented `type_method` can be used.";
}
