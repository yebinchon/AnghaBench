
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
struct _kernelrpc_mach_vm_deallocate_args {int size; int address; int target; } ;
struct TYPE_5__ {int map; } ;


 int MACH_SEND_INVALID_DEST ;
 TYPE_1__* current_task () ;
 int mach_vm_deallocate (int ,int ,int ) ;
 TYPE_1__* port_name_to_task (int ) ;
 int task_deallocate (TYPE_1__*) ;

int
_kernelrpc_mach_vm_deallocate_trap(struct _kernelrpc_mach_vm_deallocate_args *args)
{
 task_t task = port_name_to_task(args->target);
 int rv = MACH_SEND_INVALID_DEST;

 if (task != current_task())
  goto done;

 rv = mach_vm_deallocate(task->map, args->address, args->size);

done:
 if (task)
  task_deallocate(task);
 return (rv);
}
