
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int flavor; } ;
struct TYPE_7__ {TYPE_1__ dsh; } ;
typedef TYPE_2__ arm_debug_state_t ;




 int arm_debug_set32 (TYPE_2__*) ;
 int arm_debug_set64 (TYPE_2__*) ;
 int current_thread () ;
 int panic (char*) ;
 scalar_t__ thread_is_64bit_data (int ) ;

void arm_debug_set(arm_debug_state_t *debug_state)
{
 if (debug_state) {
  switch (debug_state->dsh.flavor) {
  case 129:
   arm_debug_set32(debug_state);
   break;
  case 128:
   arm_debug_set64(debug_state);
   break;
  default:
   panic("arm_debug_set");
   break;
  }
 } else {
  if (thread_is_64bit_data(current_thread()))
   arm_debug_set64(debug_state);
  else
   arm_debug_set32(debug_state);
 }
}
