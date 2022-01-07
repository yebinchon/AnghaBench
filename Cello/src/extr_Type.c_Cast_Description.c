
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char* Cast_Description(void) {
  return
    "The `Cast` class provides a rudimentary run-time type checking. By "
    "default it simply checks that the passed in object is of a given type "
    "but it can be overridden by types which have to do more complex checking "
    "to ensure the types are correct.";
}
