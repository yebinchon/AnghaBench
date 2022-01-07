
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char* Current_Description(void) {
  return
    "The `Current` class can be implemented by types which have implicit "
    "instances associated with them. For example it can be used to retrieve "
    "the _current_ `Thread`, or it could be used to get the _current_ Garbage "
    "Collector."
    "\n\n"
    "This class may be implemented by types which express the [Singleton "
    "Design Pattern](http://en.wikipedia.org/wiki/Singleton_pattern)";
}
