
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vm_map_copy_t ;
typedef scalar_t__ vm_map_address_t ;
typedef int vm_address_t ;
typedef size_t uint_t ;
typedef TYPE_1__* task_t ;
typedef int mach_port_type_t ;
typedef int mach_port_name_t ;
typedef size_t mach_msg_type_number_t ;
typedef scalar_t__ kern_return_t ;
struct TYPE_4__ {int itk_space; } ;


 scalar_t__ KERN_SUCCESS ;
 scalar_t__ fileport_invoke (TYPE_1__*,int ,int (*) (mach_port_name_t,struct fileglob*,void*),void*,int*) ;
 int ipc_kernel_map ;
 scalar_t__ mach_port_names (int ,int **,size_t*,int **,size_t*) ;
 int vm_deallocate (int ,int ,size_t) ;
 int vm_map_copy_discard (int ) ;
 scalar_t__ vm_map_copyout (int ,scalar_t__*,int ) ;

kern_return_t
fileport_walk(task_t task,
 int (*action)(mach_port_name_t, struct fileglob *, void *arg),
 void *arg)
{
 mach_port_name_t *names;
 mach_msg_type_number_t ncnt, tcnt;
 vm_map_copy_t map_copy_names, map_copy_types;
 vm_map_address_t map_names;
 kern_return_t kr;
 uint_t i;
 int rval;







 kr = mach_port_names(task->itk_space,
     (mach_port_name_t **)&map_copy_names, &ncnt,
     (mach_port_type_t **)&map_copy_types, &tcnt);
 if (kr != KERN_SUCCESS)
  return (kr);

 vm_map_copy_discard(map_copy_types);

 kr = vm_map_copyout(ipc_kernel_map, &map_names, map_copy_names);
 if (kr != KERN_SUCCESS) {
  vm_map_copy_discard(map_copy_names);
  return (kr);
 }
 names = (mach_port_name_t *)(uintptr_t)map_names;

 for (rval = 0, i = 0; i < ncnt; i++)
  if (fileport_invoke(task, names[i], action, arg,
      &rval) == KERN_SUCCESS && -1 == rval)
   break;

 vm_deallocate(ipc_kernel_map,
     (vm_address_t)names, ncnt * sizeof (*names));
 return (KERN_SUCCESS);
}
