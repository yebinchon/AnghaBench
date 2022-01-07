
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vm_size_t ;
typedef int vm_offset_t ;
typedef int vm_map_t ;
typedef int uint64_t ;
typedef TYPE_1__* thread_t ;
typedef scalar_t__ task_t ;
typedef int kern_return_t ;
struct TYPE_3__ {int recover; } ;


 int KERN_FAILURE ;
 int KERN_SUCCESS ;
 scalar_t__ copyin (int ,void*,int ) ;
 scalar_t__ current_task () ;
 TYPE_1__* current_thread () ;
 int get_task_map (scalar_t__) ;
 scalar_t__ ml_at_interrupt_context () ;
 int vm_map_read_user (int ,int ,void*,int ) ;

__attribute__((used)) static kern_return_t
chudxnu_task_read(
  task_t task,
  void *kernaddr,
  uint64_t usraddr,
  vm_size_t size)
{

 kern_return_t ret = KERN_SUCCESS;

 if (ml_at_interrupt_context()) {
  return KERN_FAILURE;
 }

 if (current_task() == task) {
  thread_t cur_thr = current_thread();
  vm_offset_t recover_handler = cur_thr->recover;

  if (copyin(usraddr, kernaddr, size)) {
   ret = KERN_FAILURE;
  }
  cur_thr->recover = recover_handler;
 } else {
  vm_map_t map = get_task_map(task);
  ret = vm_map_read_user(map, usraddr, kernaddr, size);
 }

 return ret;
}
