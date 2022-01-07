
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_10__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int const uint32_t ;
typedef size_t processorid_t ;
struct TYPE_15__ {TYPE_1__** dts_ecbs; scalar_t__ dts_necbs; TYPE_5__* dts_buffer; TYPE_3__* dts_speculations; scalar_t__ dts_nspeculations; } ;
typedef TYPE_2__ dtrace_state_t ;
struct TYPE_16__ {int dtsp_state; TYPE_5__* dtsp_buffer; } ;
typedef TYPE_3__ dtrace_speculation_t ;
typedef int dtrace_speculation_state_t ;
typedef int dtrace_specid_t ;
struct TYPE_17__ {int dtrh_epid; } ;
typedef TYPE_4__ dtrace_rechdr_t ;
typedef int dtrace_epid_t ;
struct TYPE_18__ {uintptr_t dtb_offset; scalar_t__ dtb_drops; int dtb_xamot_drops; scalar_t__ dtb_tomax; } ;
typedef TYPE_5__ dtrace_buffer_t ;
struct TYPE_14__ {size_t dte_size; } ;
struct TYPE_13__ {int cpuc_dtrace_flags; } ;


 int ASSERT (int) ;
 int CPU_DTRACE_ILLOP ;




 int DTRACESPEC_COMMITTINGMANY ;


 int DTRACE_EPIDNONE ;
 scalar_t__ DTRACE_RECORD_LOAD_TIMESTAMP (TYPE_4__*) ;
 int DTRACE_RECORD_STORE_TIMESTAMP (TYPE_4__*,int ) ;
 scalar_t__ UINT64_MAX ;
 TYPE_10__* cpu_core ;
 int dtrace_buffer_drop (TYPE_5__*) ;
 intptr_t dtrace_buffer_reserve (TYPE_5__*,uintptr_t,int,TYPE_2__*,int *) ;
 int dtrace_cas32 (int const*,int const,int) ;
 int dtrace_gethrtime () ;

__attribute__((used)) static void
dtrace_speculation_commit(dtrace_state_t *state, processorid_t cpu,
    dtrace_specid_t which)
{
 dtrace_speculation_t *spec;
 dtrace_buffer_t *src, *dest;
 uintptr_t daddr, saddr, dlimit, slimit;
 dtrace_speculation_state_t current, new = 128;
 intptr_t offs;
 uint64_t timestamp;

 if (which == 0)
  return;

 if (which > (dtrace_specid_t)state->dts_nspeculations) {
  cpu_core[cpu].cpuc_dtrace_flags |= CPU_DTRACE_ILLOP;
  return;
 }

 spec = &state->dts_speculations[which - 1];
 src = &spec->dtsp_buffer[cpu];
 dest = &state->dts_buffer[cpu];

 do {
  current = spec->dtsp_state;

  if (current == DTRACESPEC_COMMITTINGMANY)
   break;

  switch (current) {
  case 128:
  case 129:
   return;

  case 130:







   ASSERT(src->dtb_offset == 0);
   return;

  case 133:
   new = 130;
   break;

  case 131:







   if (src->dtb_offset != 0) {
    new = 130;
    break;
   }


  case 132:
   new = DTRACESPEC_COMMITTINGMANY;
   break;

  default:
   ASSERT(0);
  }
 } while (dtrace_cas32((uint32_t *)&spec->dtsp_state,
     current, new) != current);






 if ((offs = dtrace_buffer_reserve(dest, src->dtb_offset,
     sizeof (uint64_t), state, ((void*)0))) < 0) {
  dtrace_buffer_drop(dest);
  goto out;
 }
 timestamp = dtrace_gethrtime();
 saddr = (uintptr_t)src->dtb_tomax;
 slimit = saddr + src->dtb_offset;
 while (saddr < slimit) {
  size_t size;
  dtrace_rechdr_t *dtrh = (dtrace_rechdr_t *)saddr;

  if (dtrh->dtrh_epid == DTRACE_EPIDNONE) {
   saddr += sizeof (dtrace_epid_t);
   continue;
  }

  ASSERT(dtrh->dtrh_epid <= ((dtrace_epid_t) state->dts_necbs));
  size = state->dts_ecbs[dtrh->dtrh_epid - 1]->dte_size;

  ASSERT(saddr + size <= slimit);
  ASSERT(size >= sizeof(dtrace_rechdr_t));
  ASSERT(DTRACE_RECORD_LOAD_TIMESTAMP(dtrh) == UINT64_MAX);

  DTRACE_RECORD_STORE_TIMESTAMP(dtrh, timestamp);

  saddr += size;
 }







 daddr = (uintptr_t)dest->dtb_tomax + offs;
 dlimit = daddr + src->dtb_offset;
 saddr = (uintptr_t)src->dtb_tomax;




 while (dlimit - daddr >= sizeof (uint64_t)) {
  *((uint64_t *)daddr) = *((uint64_t *)saddr);

  daddr += sizeof (uint64_t);
  saddr += sizeof (uint64_t);
 }




 while (dlimit - daddr)
  *((uint8_t *)daddr++) = *((uint8_t *)saddr++);




 dest->dtb_offset = offs + src->dtb_offset;

out:




 if (current == 133 ||
     (current == 131 && new == 130)) {
  uint32_t rval = dtrace_cas32((uint32_t *)&spec->dtsp_state,
      130, 128);
#pragma unused(rval)

 ASSERT(rval == 130);
 }

 src->dtb_offset = 0;
 src->dtb_xamot_drops += src->dtb_drops;
 src->dtb_drops = 0;
}
