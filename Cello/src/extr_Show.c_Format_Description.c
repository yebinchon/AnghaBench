
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char* Format_Description(void) {
  return
    "Format abstracts the class of operations such as `scanf`, `sprintf` and "
    "`fprintf` with matching semantics. It provides general `printf` and "
    "`scanf` functionality for several different types objects in a "
    "uniform way. This class is essentially an in-between class, used by the "
    "`Show` class to read and write output."
    "\n\n"
    "It is important to note that the semantics of these operations match "
    "`printf` and not the newly defined `Show` class. For example it is "
    "perfectly valid to pass a C `int` to these functions, while the `println` "
    "function from `Show` must be passed only `var` objects.";
}
