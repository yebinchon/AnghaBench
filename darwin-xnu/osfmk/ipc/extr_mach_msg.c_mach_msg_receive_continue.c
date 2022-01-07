
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
typedef scalar_t__ mach_msg_return_t ;
struct TYPE_3__ {scalar_t__ ith_state; int (* ith_continuation ) (scalar_t__) ;} ;


 scalar_t__ MACH_PEEK_READY ;
 TYPE_1__* current_thread () ;
 scalar_t__ mach_msg_receive_results (int *) ;
 int stub1 (scalar_t__) ;

void
mach_msg_receive_continue(void)
{
 mach_msg_return_t mr;
 thread_t self = current_thread();

 if (self->ith_state == MACH_PEEK_READY)
  mr = MACH_PEEK_READY;
 else
  mr = mach_msg_receive_results(((void*)0));
 (*self->ith_continuation)(mr);
}
