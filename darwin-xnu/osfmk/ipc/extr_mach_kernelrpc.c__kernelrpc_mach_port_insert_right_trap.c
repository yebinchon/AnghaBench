
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
struct _kernelrpc_mach_port_insert_right_args {int name; int polyPoly; int poly; int target; } ;
typedef int mach_msg_type_name_t ;
typedef scalar_t__ ipc_port_t ;
typedef int ipc_object_t ;
struct TYPE_5__ {int itk_space; } ;


 scalar_t__ IO_VALID (int ) ;
 int KERN_SUCCESS ;
 int MACH_SEND_INVALID_DEST ;
 TYPE_1__* current_task () ;
 int ipc_object_copyin (int ,int ,int ,int *) ;
 int ipc_object_copyin_type (int ) ;
 int ipc_object_destroy (int ,int ) ;
 int mach_port_insert_right (int ,int ,scalar_t__,int ) ;
 TYPE_1__* port_name_to_task (int ) ;
 int task_deallocate (TYPE_1__*) ;

int
_kernelrpc_mach_port_insert_right_trap(struct _kernelrpc_mach_port_insert_right_args *args)
{
 task_t task = port_name_to_task(args->target);
 ipc_port_t port;
 mach_msg_type_name_t disp;
 int rv = MACH_SEND_INVALID_DEST;

 if (task != current_task())
  goto done;

 rv = ipc_object_copyin(task->itk_space, args->poly, args->polyPoly,
     (ipc_object_t *)&port);
 if (rv != KERN_SUCCESS)
  goto done;
 disp = ipc_object_copyin_type(args->polyPoly);

 rv = mach_port_insert_right(task->itk_space, args->name, port, disp);
 if (rv != KERN_SUCCESS) {
  if (IO_VALID((ipc_object_t)port)) {
   ipc_object_destroy((ipc_object_t)port, disp);
  }
 }

done:
 if (task)
  task_deallocate(task);
 return (rv);
}
