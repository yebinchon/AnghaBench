
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef scalar_t__ uint32_t ;
struct thread_snapshot {int dummy; } ;
struct task_snapshot {int dummy; } ;


 int PAGE_MASK ;
 scalar_t__ STACKSHOT_SUPP_SIZE ;
 int TASK_UUID_AVG_SIZE ;
 scalar_t__ VM_MAP_ROUND_PAGE (scalar_t__,int ) ;
 int tasks_count ;
 int threads_count ;

uint32_t
get_stackshot_estsize(uint32_t prev_size_hint)
{
 vm_size_t thread_total;
 vm_size_t task_total;
 uint32_t estimated_size;

 thread_total = (threads_count * sizeof(struct thread_snapshot));
 task_total = (tasks_count * (sizeof(struct task_snapshot) + TASK_UUID_AVG_SIZE));

 estimated_size = (uint32_t) VM_MAP_ROUND_PAGE((thread_total + task_total + STACKSHOT_SUPP_SIZE), PAGE_MASK);
 if (estimated_size < prev_size_hint) {
  estimated_size = (uint32_t) VM_MAP_ROUND_PAGE(prev_size_hint, PAGE_MASK);
 }

 return estimated_size;
}
