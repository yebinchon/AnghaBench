
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct Method {char* member_0; char* member_1; char* member_2; } ;



__attribute__((used)) static struct Method* Lock_Methods(void) {

  static struct Method methods[] = {
    {
      "lock",
      "void lock(var self);",
      "Wait until a lock can be aquired on object `self`."
    }, {
      "trylock",
      "bool trylock(var self);",
      "Try to acquire a lock on object `self`. Returns `true` on success and "
      "`false` if the resource is busy."
    }, {
      "unlock",
      "void unlock(var self);",
      "Release lock on object `self`."
    }, {((void*)0), ((void*)0), ((void*)0)}
  };

  return methods;
}
