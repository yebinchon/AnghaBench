
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t uint8_t ;
typedef int uint32_t ;
typedef int boolean_t ;
struct TYPE_2__ {size_t n_debugids; int* debugids; int types; } ;


 scalar_t__ DBG_PERF ;
 size_t DECODE_TYPE (int ,size_t) ;
 int FALSE ;
 scalar_t__ KDBG_EXTRACT_CLASS (int) ;
 int TRUE ;
 int* debugid_masks ;
 TYPE_1__* kperf_kdebug_filter ;

boolean_t
kperf_kdebug_should_trigger(uint32_t debugid)
{

 if (KDBG_EXTRACT_CLASS(debugid) == DBG_PERF) {
  return FALSE;
 }






 for (uint8_t i = 0; i < kperf_kdebug_filter->n_debugids; i++) {
  uint32_t check_debugid =
   kperf_kdebug_filter->debugids[i];
  uint32_t mask = debugid_masks[DECODE_TYPE(kperf_kdebug_filter->types, i)];

  if ((debugid & mask) == check_debugid) {
   return TRUE;
  }
 }

 return FALSE;
}
