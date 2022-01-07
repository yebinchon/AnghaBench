
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t processorid_t ;
struct TYPE_7__ {TYPE_2__* dts_speculations; scalar_t__ dts_nspeculations; TYPE_3__* dts_buffer; } ;
typedef TYPE_1__ dtrace_state_t ;
struct TYPE_8__ {scalar_t__ dtsp_state; TYPE_3__* dtsp_buffer; } ;
typedef TYPE_2__ dtrace_speculation_t ;
typedef size_t dtrace_specid_t ;
typedef int dtrace_icookie_t ;
struct TYPE_9__ {scalar_t__ dtb_offset; int * dtb_tomax; } ;
typedef TYPE_3__ dtrace_buffer_t ;
struct TYPE_10__ {size_t cpu_id; } ;


 TYPE_6__* CPU ;
 scalar_t__ DTRACESPEC_COMMITTINGMANY ;
 scalar_t__ DTRACESPEC_DISCARDING ;
 int dtrace_interrupt_disable () ;
 int dtrace_interrupt_enable (int ) ;
 int dtrace_speculation_commit (TYPE_1__*,size_t,size_t) ;

__attribute__((used)) static void
dtrace_speculation_clean_here(dtrace_state_t *state)
{
 dtrace_icookie_t cookie;
 processorid_t cpu = CPU->cpu_id;
 dtrace_buffer_t *dest = &state->dts_buffer[cpu];
 dtrace_specid_t i;

 cookie = dtrace_interrupt_disable();

 if (dest->dtb_tomax == ((void*)0)) {
  dtrace_interrupt_enable(cookie);
  return;
 }

 for (i = 0; i < (dtrace_specid_t)state->dts_nspeculations; i++) {
  dtrace_speculation_t *spec = &state->dts_speculations[i];
  dtrace_buffer_t *src = &spec->dtsp_buffer[cpu];

  if (src->dtb_tomax == ((void*)0))
   continue;

  if (spec->dtsp_state == DTRACESPEC_DISCARDING) {
   src->dtb_offset = 0;
   continue;
  }

  if (spec->dtsp_state != DTRACESPEC_COMMITTINGMANY)
   continue;

  if (src->dtb_offset == 0)
   continue;

  dtrace_speculation_commit(state, cpu, i + 1);
 }

 dtrace_interrupt_enable(cookie);
}
