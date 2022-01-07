
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int thread_t ;
typedef int thread_state_t ;
typedef int task_t ;
typedef TYPE_1__* proc_t ;
struct TYPE_6__ {scalar_t__ threadstate_sz; int entry_point; scalar_t__* threadstate; scalar_t__ is_64bit_addr; int is_64bit_data; } ;
typedef TYPE_2__ load_result_t ;
struct TYPE_5__ {int p_flag; } ;


 int KERN_SUCCESS ;
 int MACH_VM_MIN_ADDRESS ;
 int OSBitAndAtomic (scalar_t__,int *) ;
 int OSBitOrAtomic (scalar_t__,int *) ;
 scalar_t__ P_LP64 ;
 int task_set_64bit (int ,scalar_t__,int ) ;
 int task_set_dyld_info (int ,int ,int ) ;
 int thread_setentrypoint (int ,int ) ;
 int thread_setstatus (int ,scalar_t__,int ,scalar_t__) ;
 int thread_state_initialize (int ) ;

__attribute__((used)) static int
activate_exec_state(task_t task, proc_t p, thread_t thread, load_result_t *result)
{
 int ret;

 task_set_dyld_info(task, MACH_VM_MIN_ADDRESS, 0);
 task_set_64bit(task, result->is_64bit_addr, result->is_64bit_data);
 if (result->is_64bit_addr) {
  OSBitOrAtomic(P_LP64, &p->p_flag);
 } else {
  OSBitAndAtomic(~((uint32_t)P_LP64), &p->p_flag);
 }

 ret = thread_state_initialize(thread);
 if (ret != KERN_SUCCESS) {
  return ret;
 }

 if (result->threadstate) {
  uint32_t *ts = result->threadstate;
  uint32_t total_size = result->threadstate_sz;

  while (total_size > 0) {
   uint32_t flavor = *ts++;
   uint32_t size = *ts++;

   ret = thread_setstatus(thread, flavor, (thread_state_t)ts, size);
   if (ret) {
    return ret;
   }
   ts += size;
   total_size -= (size + 2) * sizeof(uint32_t);
  }
 }

 thread_setentrypoint(thread, result->entry_point);

 return KERN_SUCCESS;
}
