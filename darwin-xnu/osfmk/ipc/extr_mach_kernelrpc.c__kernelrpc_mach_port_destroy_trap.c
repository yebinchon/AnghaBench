
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
struct _kernelrpc_mach_port_destroy_args {int name; int target; } ;
struct TYPE_5__ {int itk_space; } ;


 int MACH_SEND_INVALID_DEST ;
 TYPE_1__* current_task () ;
 int mach_port_destroy (int ,int ) ;
 TYPE_1__* port_name_to_task (int ) ;
 int task_deallocate (TYPE_1__*) ;

int
_kernelrpc_mach_port_destroy_trap(struct _kernelrpc_mach_port_destroy_args *args)
{
 task_t task = port_name_to_task(args->target);
 int rv = MACH_SEND_INVALID_DEST;

 if (task != current_task())
  goto done;

 rv = mach_port_destroy(task->itk_space, args->name);

done:
 if (task)
  task_deallocate(task);
 return (rv);
}
