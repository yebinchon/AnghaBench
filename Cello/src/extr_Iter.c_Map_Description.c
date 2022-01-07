
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char* Map_Description(void) {
  return
    "The `Map` type is an iterable that applies some callable to to each "
    "item in another iterable and returns the result. This can be useful to "
    "make more concise iteration when there are callback functions available."
    "\n\n"
    "If the mapping callable is a purely side-effect callable it is possible "
    "to use the `call` function on the `Map` object directly for a quick way "
    "to perform the iteration."
    "\n\n"
    "One downside of `Map` is that the `iter_type` becomes unknown (there is "
    "no way to know what type the callable will return so some objects such "
    "as `Array`s may revert to using `Ref` as the object type when assigned a "
    "`Map`.";
}
