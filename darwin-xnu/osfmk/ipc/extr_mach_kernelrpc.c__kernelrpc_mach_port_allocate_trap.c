
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
struct _kernelrpc_mach_port_allocate_args {int name; int right; int target; } ;
typedef int name ;
typedef int mach_port_name_t ;
struct TYPE_5__ {int itk_space; } ;


 int KERN_SUCCESS ;
 int MACH_SEND_INVALID_DEST ;
 int copyout (int *,int ,int) ;
 TYPE_1__* current_task () ;
 int mach_port_allocate (int ,int ,int *) ;
 TYPE_1__* port_name_to_task (int ) ;
 int task_deallocate (TYPE_1__*) ;

int
_kernelrpc_mach_port_allocate_trap(struct _kernelrpc_mach_port_allocate_args *args)
{
 task_t task = port_name_to_task(args->target);
 mach_port_name_t name;
 int rv = MACH_SEND_INVALID_DEST;

 if (task != current_task())
  goto done;

 rv = mach_port_allocate(task->itk_space, args->right, &name);
 if (rv == KERN_SUCCESS)
  rv = copyout(&name, args->name, sizeof (name));


done:
 if (task)
  task_deallocate(task);
 return (rv);
}
