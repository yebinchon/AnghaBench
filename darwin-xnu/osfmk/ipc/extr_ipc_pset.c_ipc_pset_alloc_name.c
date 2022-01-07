
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mach_port_name_t ;
typedef scalar_t__ kern_return_t ;
typedef int ipc_space_t ;
typedef TYPE_1__* ipc_pset_t ;
typedef int ipc_object_t ;
struct TYPE_3__ {int ips_messages; } ;


 int IOT_PORT_SET ;
 scalar_t__ KERN_SUCCESS ;
 int MACH_PORT_TYPE_PORT_SET ;
 int TRUE ;
 int ipc_mqueue_init (int *,int ) ;
 scalar_t__ ipc_object_alloc_name (int ,int ,int ,int ,int ,int *) ;

kern_return_t
ipc_pset_alloc_name(
 ipc_space_t space,
 mach_port_name_t name,
 ipc_pset_t *psetp)
{
 ipc_pset_t pset;
 kern_return_t kr;

 kr = ipc_object_alloc_name(space, IOT_PORT_SET,
       MACH_PORT_TYPE_PORT_SET, 0,
       name, (ipc_object_t *) &pset);
 if (kr != KERN_SUCCESS) {
  return kr;
 }


 ipc_mqueue_init(&pset->ips_messages, TRUE );

 *psetp = pset;
 return KERN_SUCCESS;
}
