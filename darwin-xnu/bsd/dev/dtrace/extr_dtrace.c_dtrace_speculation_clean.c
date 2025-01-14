
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int dtrace_xcall_t ;
struct TYPE_5__ {TYPE_2__* dts_speculations; scalar_t__ dts_nspeculations; } ;
typedef TYPE_1__ dtrace_state_t ;
struct TYPE_6__ {int dtsp_cleaning; scalar_t__ dtsp_state; } ;
typedef TYPE_2__ dtrace_speculation_t ;
typedef scalar_t__ dtrace_speculation_state_t ;
typedef size_t dtrace_specid_t ;


 int ASSERT (int) ;
 scalar_t__ DTRACESPEC_COMMITTINGMANY ;
 scalar_t__ DTRACESPEC_DISCARDING ;
 scalar_t__ DTRACESPEC_INACTIVE ;
 int DTRACE_CPUALL ;
 scalar_t__ dtrace_cas32 (scalar_t__*,scalar_t__,scalar_t__) ;
 scalar_t__ dtrace_speculation_clean_here ;
 int dtrace_xcall (int ,int ,TYPE_1__*) ;

__attribute__((used)) static void
dtrace_speculation_clean(dtrace_state_t *state)
{
 int work = 0;
 uint32_t rv;
 dtrace_specid_t i;

 for (i = 0; i < (dtrace_specid_t)state->dts_nspeculations; i++) {
  dtrace_speculation_t *spec = &state->dts_speculations[i];

  ASSERT(!spec->dtsp_cleaning);

  if (spec->dtsp_state != DTRACESPEC_DISCARDING &&
      spec->dtsp_state != DTRACESPEC_COMMITTINGMANY)
   continue;

  work++;
  spec->dtsp_cleaning = 1;
 }

 if (!work)
  return;

 dtrace_xcall(DTRACE_CPUALL,
     (dtrace_xcall_t)dtrace_speculation_clean_here, state);






 for (i = 0; i < (dtrace_specid_t)state->dts_nspeculations; i++) {
  dtrace_speculation_t *spec = &state->dts_speculations[i];
  dtrace_speculation_state_t current, new;

  if (!spec->dtsp_cleaning)
   continue;

  current = spec->dtsp_state;
  ASSERT(current == DTRACESPEC_DISCARDING ||
      current == DTRACESPEC_COMMITTINGMANY);

  new = DTRACESPEC_INACTIVE;

  rv = dtrace_cas32((uint32_t *)&spec->dtsp_state, current, new);
  ASSERT(rv == current);
  spec->dtsp_cleaning = 0;
 }
}
