
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int wait_result_t ;
typedef TYPE_1__* thread_t ;
typedef int mach_msg_option_t ;
struct TYPE_3__ {int ith_option; int ith_state; } ;




 int MACH_RCV_INTERRUPTED ;
 int MACH_RCV_LARGE ;
 int MACH_RCV_PORT_CHANGED ;

 int MACH_RCV_TIMED_OUT ;





 TYPE_1__* current_thread () ;
 int panic (char*) ;

void
ipc_mqueue_receive_results(wait_result_t saved_wait_result)
{
 thread_t self = current_thread();
 mach_msg_option_t option = self->ith_option;




 switch (saved_wait_result) {
 case 128:
  self->ith_state = MACH_RCV_TIMED_OUT;
  return;

 case 130:
  self->ith_state = MACH_RCV_INTERRUPTED;
  return;

 case 129:

  self->ith_state = MACH_RCV_PORT_CHANGED;
  return;

 case 131:




  switch (self->ith_state) {
  case 133:
  case 132:







   if (option & MACH_RCV_LARGE) {
    return;
   }

  case 135:
  case 134:
   return;

  default:
   panic("ipc_mqueue_receive_results: strange ith_state");
  }

 default:
  panic("ipc_mqueue_receive_results: strange wait_result");
 }
}
