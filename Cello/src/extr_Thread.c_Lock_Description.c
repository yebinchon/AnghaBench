
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char* Lock_Description(void) {
  return
    "The `Lock` class can be implemented by types to limit the access to them. "
    "For example this class is implemented by the `Mutex` type to provide "
    "mutual exclusion across Threads.";
}
