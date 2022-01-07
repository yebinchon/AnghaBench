
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* task_t ;
typedef struct fileglob fileglob ;
typedef int mach_port_name_t ;
typedef scalar_t__ kern_return_t ;
typedef int ipc_port_t ;
typedef int ipc_object_t ;
struct TYPE_3__ {int itk_space; } ;


 scalar_t__ KERN_FAILURE ;
 scalar_t__ KERN_SUCCESS ;
 int MACH_MSG_TYPE_COPY_SEND ;
 struct fileglob* fileport_port_to_fileglob (int ) ;
 scalar_t__ ipc_object_copyin (int ,int ,int ,int *) ;
 int ipc_port_release_send (int ) ;
 int stub1 (int ,struct fileglob*,void*) ;

kern_return_t
fileport_invoke(task_t task, mach_port_name_t name,
 int (*action)(mach_port_name_t, struct fileglob *, void *),
 void *arg, int *rval)
{
 kern_return_t kr;
 ipc_port_t fileport;
 struct fileglob *fg;

 kr = ipc_object_copyin(task->itk_space, name,
     MACH_MSG_TYPE_COPY_SEND, (ipc_object_t *)&fileport);
 if (kr != KERN_SUCCESS)
  return (kr);

 if ((fg = fileport_port_to_fileglob(fileport)) != ((void*)0))
  *rval = (*action)(name, fg, arg);
 else
  kr = KERN_FAILURE;
 ipc_port_release_send(fileport);
 return (kr);
}
