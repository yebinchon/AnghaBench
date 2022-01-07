
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
typedef int mach_vm_size_t ;
typedef int mach_vm_address_t ;
struct TYPE_5__ {int all_image_info_size; int all_image_info_addr; } ;


 int task_lock (TYPE_1__*) ;
 int task_unlock (TYPE_1__*) ;

void
task_set_dyld_info(
    task_t task,
    mach_vm_address_t addr,
    mach_vm_size_t size)
{
 task_lock(task);
 task->all_image_info_addr = addr;
 task->all_image_info_size = size;
    task_unlock(task);
}
