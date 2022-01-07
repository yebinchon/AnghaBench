
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint32_t ;
typedef int boolean_t ;
struct TYPE_5__ {scalar_t__* bcr; scalar_t__* bvr; scalar_t__* wcr; scalar_t__* wvr; } ;
typedef TYPE_1__ arm_debug_state32_t ;
struct TYPE_6__ {size_t num_breakpoint_pairs; size_t num_watchpoint_pairs; } ;
typedef TYPE_2__ arm_debug_info_t ;


 int FALSE ;
 int TRUE ;
 scalar_t__ VM_MAX_ADDRESS32 ;
 TYPE_2__* arm_debug_info () ;

boolean_t
debug_state_is_valid32(arm_debug_state32_t *debug_state)
{
 arm_debug_info_t *debug_info = arm_debug_info();
 uint32_t i;
 for (i = 0; i < debug_info->num_breakpoint_pairs; i++) {
  if (0 != debug_state->bcr[i] && VM_MAX_ADDRESS32 <= debug_state->bvr[i])
   return FALSE;
 }

 for (i = 0; i < debug_info->num_watchpoint_pairs; i++) {
  if (0 != debug_state->wcr[i] && VM_MAX_ADDRESS32 <= debug_state->wvr[i])
   return FALSE;
 }
 return TRUE;
}
