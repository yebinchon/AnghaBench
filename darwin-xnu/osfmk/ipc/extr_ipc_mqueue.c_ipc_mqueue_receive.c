
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ wait_result_t ;
typedef TYPE_1__* thread_t ;
typedef int mach_msg_timeout_t ;
typedef int mach_msg_size_t ;
typedef int mach_msg_option_t ;
typedef int ipc_mqueue_t ;
struct TYPE_4__ {scalar_t__ ith_continuation; } ;


 int THREAD_ABORTSAFE ;
 int THREAD_CONTINUE_NULL ;
 scalar_t__ THREAD_NOT_WAITING ;
 scalar_t__ THREAD_WAITING ;
 int c_ipc_mqueue_receive_block_kernel ;
 int c_ipc_mqueue_receive_block_user ;
 int counter (int ) ;
 TYPE_1__* current_thread () ;
 int imq_lock (int ) ;
 int ipc_mqueue_receive_continue ;
 scalar_t__ ipc_mqueue_receive_on_thread (int ,int ,int ,int ,int,TYPE_1__*) ;
 int ipc_mqueue_receive_results (scalar_t__) ;
 scalar_t__ thread_block (int ) ;

void
ipc_mqueue_receive(
 ipc_mqueue_t mqueue,
 mach_msg_option_t option,
 mach_msg_size_t max_size,
 mach_msg_timeout_t rcv_timeout,
 int interruptible)
{
 wait_result_t wresult;
 thread_t self = current_thread();

 imq_lock(mqueue);
 wresult = ipc_mqueue_receive_on_thread(mqueue, option, max_size,
                                        rcv_timeout, interruptible,
                                        self);

 if (wresult == THREAD_NOT_WAITING)
  return;

 if (wresult == THREAD_WAITING) {
  counter((interruptible == THREAD_ABORTSAFE) ?
   c_ipc_mqueue_receive_block_user++ :
   c_ipc_mqueue_receive_block_kernel++);

  if (self->ith_continuation)
   thread_block(ipc_mqueue_receive_continue);


  wresult = thread_block(THREAD_CONTINUE_NULL);
 }
 ipc_mqueue_receive_results(wresult);
}
