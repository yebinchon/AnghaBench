
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;


 scalar_t__ dtrace_cas32 (scalar_t__*,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
dtrace_error(uint32_t *counter)
{
 uint32_t oval, nval;

 do {
  oval = *counter;

  if ((nval = oval + 1) == 0) {
   nval = 1;
  }
 } while (dtrace_cas32(counter, oval, nval) != oval);
}
