
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int thread_t ;
typedef TYPE_1__* task_t ;
typedef int mach_msg_type_number_t ;
typedef int mach_exception_data_t ;
typedef int lck_mtx_t ;
typedef scalar_t__ kern_return_t ;
typedef int exception_type_t ;
struct TYPE_3__ {int exc_actions; int itk_lock_data; } ;


 scalar_t__ KERN_FAILURE ;
 scalar_t__ KERN_SUCCESS ;
 scalar_t__ MACH_RCV_PORT_DIED ;
 TYPE_1__* current_task () ;
 int current_thread () ;
 scalar_t__ exception_deliver (int ,int ,int ,int ,int ,int *) ;

kern_return_t
bsd_exception(
 exception_type_t exception,
 mach_exception_data_t code,
 mach_msg_type_number_t codeCnt)
{
 task_t task;
 lck_mtx_t *mutex;
 thread_t self = current_thread();
 kern_return_t kr;




 task = current_task();
 mutex = &task->itk_lock_data;

 kr = exception_deliver(self, exception, code, codeCnt, task->exc_actions, mutex);

 if (kr == KERN_SUCCESS || kr == MACH_RCV_PORT_DIED)
  return(KERN_SUCCESS);
 return(KERN_FAILURE);
}
