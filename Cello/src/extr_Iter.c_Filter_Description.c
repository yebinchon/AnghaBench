
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char* Filter_Description(void) {
  return
    "The `Filter` type can be used to filter the results of some iterable. "
    "Given a callable object `Filter` iterable returns only those items in "
    "the original iterable for where calling the function returns a "
    "non-`NULL` value.";
}
