
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
struct _kernelrpc_mach_vm_map_trap_args {int addr; int cur_protection; int flags; int mask; int size; int target; } ;
typedef int mach_vm_offset_t ;
typedef int addr ;
struct TYPE_5__ {int map; } ;


 int FALSE ;
 int IPC_PORT_NULL ;
 int KERN_SUCCESS ;
 int MACH_SEND_INVALID_DEST ;
 int VM_INHERIT_DEFAULT ;
 int VM_PROT_ALL ;
 scalar_t__ copyin (int ,char*,int) ;
 int copyout (int *,int ,int) ;
 TYPE_1__* current_task () ;
 int mach_vm_map_external (int ,int *,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 TYPE_1__* port_name_to_task (int ) ;
 int task_deallocate (TYPE_1__*) ;

int
_kernelrpc_mach_vm_map_trap(struct _kernelrpc_mach_vm_map_trap_args *args)
{
 mach_vm_offset_t addr;
 task_t task = port_name_to_task(args->target);
 int rv = MACH_SEND_INVALID_DEST;

 if (task != current_task())
  goto done;

 if (copyin(args->addr, (char *)&addr, sizeof (addr)))
  goto done;

 rv = mach_vm_map_external(task->map, &addr, args->size, args->mask, args->flags,
   IPC_PORT_NULL, 0, FALSE, args->cur_protection, VM_PROT_ALL,
   VM_INHERIT_DEFAULT);
 if (rv == KERN_SUCCESS)
  rv = copyout(&addr, args->addr, sizeof (addr));

done:
 if (task)
  task_deallocate(task);
 return (rv);
}
