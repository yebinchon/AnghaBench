
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char* GC_Description(void) {
  return
    "The `GC` type provides an interface to the Cello Garbage Collector. One "
    "instance of this type is created for each thread and can be retrieved "
    "using the `current` function. The Garbage Collector can be stopped and "
    "started using `start` and `stop` and objects can be added or removed from "
    "the Garbage Collector using `set` and `rem`.";
}
