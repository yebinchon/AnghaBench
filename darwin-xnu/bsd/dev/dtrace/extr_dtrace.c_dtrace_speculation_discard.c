
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint32_t ;
typedef size_t processorid_t ;
struct TYPE_6__ {TYPE_2__* dts_speculations; scalar_t__ dts_nspeculations; } ;
typedef TYPE_1__ dtrace_state_t ;
struct TYPE_7__ {int dtsp_state; TYPE_3__* dtsp_buffer; } ;
typedef TYPE_2__ dtrace_speculation_t ;
typedef int dtrace_speculation_state_t ;
typedef int dtrace_specid_t ;
struct TYPE_8__ {scalar_t__ dtb_offset; scalar_t__ dtb_drops; } ;
typedef TYPE_3__ dtrace_buffer_t ;
struct TYPE_9__ {int cpuc_dtrace_flags; } ;


 int ASSERT (int ) ;
 int CPU_DTRACE_ILLOP ;







 TYPE_5__* cpu_core ;
 int dtrace_cas32 (int *,int,int) ;

__attribute__((used)) static void
dtrace_speculation_discard(dtrace_state_t *state, processorid_t cpu,
    dtrace_specid_t which)
{
 dtrace_speculation_t *spec;
 dtrace_speculation_state_t current, new = 128;
 dtrace_buffer_t *buf;

 if (which == 0)
  return;

 if (which > (dtrace_specid_t)state->dts_nspeculations) {
  cpu_core[cpu].cpuc_dtrace_flags |= CPU_DTRACE_ILLOP;
  return;
 }

 spec = &state->dts_speculations[which - 1];
 buf = &spec->dtsp_buffer[cpu];

 do {
  current = spec->dtsp_state;

  switch (current) {
  case 128:
  case 130:
  case 131:
  case 129:
   return;

  case 134:
  case 133:
   new = 129;
   break;

  case 132:
   if (buf->dtb_offset != 0) {
    new = 128;
   } else {
    new = 129;
   }
   break;

  default:
   ASSERT(0);
  }
 } while (dtrace_cas32((uint32_t *)&spec->dtsp_state,
     current, new) != current);

 buf->dtb_offset = 0;
 buf->dtb_drops = 0;
}
