
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int processorid_t ;
struct TYPE_4__ {scalar_t__ dts_activity; scalar_t__ dts_reserve; } ;
typedef TYPE_1__ dtrace_state_t ;
typedef int dtrace_icookie_t ;
struct TYPE_5__ {int cpu_id; } ;


 int ASSERT (int) ;
 TYPE_3__* CPU ;
 scalar_t__ DTRACE_ACTIVITY_ACTIVE ;
 scalar_t__ DTRACE_ACTIVITY_COOLDOWN ;
 scalar_t__ DTRACE_ACTIVITY_DRAINING ;
 scalar_t__ DTRACE_ACTIVITY_STOPPED ;
 int EINVAL ;
 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int dtrace_interrupt_disable () ;
 int dtrace_interrupt_enable (int ) ;
 int dtrace_lock ;
 int dtrace_probe (int ,int ,int ,int ,int ,int ) ;
 int dtrace_probeid_end ;
 int dtrace_sync () ;

__attribute__((used)) static int
dtrace_state_stop(dtrace_state_t *state, processorid_t *cpu)
{
 dtrace_icookie_t cookie;

 LCK_MTX_ASSERT(&dtrace_lock, LCK_MTX_ASSERT_OWNED);

 if (state->dts_activity != DTRACE_ACTIVITY_ACTIVE &&
     state->dts_activity != DTRACE_ACTIVITY_DRAINING)
  return (EINVAL);






 state->dts_activity = DTRACE_ACTIVITY_DRAINING;
 dtrace_sync();
 state->dts_activity = DTRACE_ACTIVITY_COOLDOWN;
 dtrace_sync();
 ASSERT(state->dts_activity == DTRACE_ACTIVITY_COOLDOWN);
 state->dts_reserve = 0;

 cookie = dtrace_interrupt_disable();
 *cpu = CPU->cpu_id;
 dtrace_probe(dtrace_probeid_end,
     (uint64_t)(uintptr_t)state, 0, 0, 0, 0);
 dtrace_interrupt_enable(cookie);

 state->dts_activity = DTRACE_ACTIVITY_STOPPED;
 dtrace_sync();

 return (0);
}
