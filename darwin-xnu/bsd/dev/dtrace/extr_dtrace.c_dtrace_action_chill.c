
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint16_t ;
typedef scalar_t__ hrtime_t ;
struct TYPE_6__ {int dtms_present; } ;
typedef TYPE_1__ dtrace_mstate_t ;
struct TYPE_7__ {size_t cpu_id; scalar_t__ cpu_dtrace_chillmark; scalar_t__ cpu_dtrace_chilled; } ;
typedef TYPE_2__ dtrace_cpu_t ;
struct TYPE_8__ {int cpuc_dtrace_flags; } ;


 TYPE_2__* CPU ;
 int volatile CPU_DTRACE_ILLOP ;
 int DTRACE_MSTATE_TIMESTAMP ;
 TYPE_4__* cpu_core ;
 scalar_t__ dtrace_chill_interval ;
 scalar_t__ dtrace_chill_max ;
 scalar_t__ dtrace_destructive_disallow ;
 scalar_t__ dtrace_gethrtime () ;

__attribute__((used)) static void
dtrace_action_chill(dtrace_mstate_t *mstate, hrtime_t val)
{
 hrtime_t now;
 volatile uint16_t *flags;
 dtrace_cpu_t *cpu = CPU;

 if (dtrace_destructive_disallow)
  return;

 flags = (volatile uint16_t *)&cpu_core[cpu->cpu_id].cpuc_dtrace_flags;

 now = dtrace_gethrtime();

 if (now - cpu->cpu_dtrace_chillmark > dtrace_chill_interval) {



  cpu->cpu_dtrace_chillmark = now;
  cpu->cpu_dtrace_chilled = 0;
 }






 if (cpu->cpu_dtrace_chilled + val > dtrace_chill_max ||
     cpu->cpu_dtrace_chilled + val < cpu->cpu_dtrace_chilled) {
  *flags |= CPU_DTRACE_ILLOP;
  return;
 }

 while (dtrace_gethrtime() - now < val)
  continue;






 mstate->dtms_present &= ~DTRACE_MSTATE_TIMESTAMP;
 cpu->cpu_dtrace_chilled += val;
}
