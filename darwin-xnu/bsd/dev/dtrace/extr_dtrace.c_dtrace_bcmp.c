
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_4__ {size_t cpu_id; } ;
struct TYPE_3__ {int cpuc_dtrace_flags; } ;


 TYPE_2__* CPU ;
 int volatile CPU_DTRACE_FAULT ;
 TYPE_1__* cpu_core ;
 scalar_t__ dtrace_load8 (uintptr_t) ;

__attribute__((used)) static int
dtrace_bcmp(const void *s1, const void *s2, size_t len)
{
 volatile uint16_t *flags;

 flags = (volatile uint16_t *)&cpu_core[CPU->cpu_id].cpuc_dtrace_flags;

 if (s1 == s2)
  return (0);

 if (s1 == ((void*)0) || s2 == ((void*)0))
  return (1);

 if (s1 != s2 && len != 0) {
  const uint8_t *ps1 = s1;
  const uint8_t *ps2 = s2;

  do {
   if (dtrace_load8((uintptr_t)ps1++) != *ps2++)
    return (1);
  } while (--len != 0 && !(*flags & CPU_DTRACE_FAULT));
 }
 return (0);
}
