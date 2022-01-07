
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int mach_port_name_t ;
typedef int mach_port_mscount_t ;
typedef int mach_msg_id_t ;
typedef scalar_t__ kern_return_t ;
typedef scalar_t__ ipc_space_t ;
typedef scalar_t__ ipc_port_t ;
typedef TYPE_2__* ipc_entry_t ;
struct TYPE_5__ {scalar_t__ ie_object; } ;
struct TYPE_4__ {int * ip_subsystem; } ;


 int FALSE ;
 int IKOT_NONE ;
 scalar_t__ IP_DEAD ;
 scalar_t__ IS_NULL ;
 scalar_t__ KERN_INVALID_ARGUMENT ;
 scalar_t__ KERN_INVALID_CAPABILITY ;
 scalar_t__ KERN_INVALID_RIGHT ;
 scalar_t__ KERN_INVALID_TASK ;
 scalar_t__ KERN_INVALID_VALUE ;
 scalar_t__ KERN_SUCCESS ;




 int MACH_PORT_VALID (int ) ;
 int TRUE ;
 int ip_kotype (scalar_t__) ;
 int ip_unlock (scalar_t__) ;
 int ipc_port_nsrequest (scalar_t__,int ,scalar_t__,scalar_t__*) ;
 int ipc_port_pdrequest (scalar_t__,scalar_t__,scalar_t__*) ;
 scalar_t__ ipc_port_translate_receive (scalar_t__,int ,scalar_t__*) ;
 scalar_t__ ipc_right_lookup_write (scalar_t__,int ,TYPE_2__**) ;
 scalar_t__ ipc_right_request_alloc (scalar_t__,int ,int,int ,scalar_t__,scalar_t__*) ;
 int is_write_unlock (scalar_t__) ;
 int panic (char*) ;

kern_return_t
mach_port_request_notification(
 ipc_space_t space,
 mach_port_name_t name,
 mach_msg_id_t id,
 mach_port_mscount_t sync,
 ipc_port_t notify,
 ipc_port_t *previousp)
{
 kern_return_t kr;

 if (space == IS_NULL)
  return KERN_INVALID_TASK;

 if (notify == IP_DEAD)
  return KERN_INVALID_CAPABILITY;
 switch (id) {
     case 129: {
  ipc_port_t port, previous;

  if (sync != 0)
   return KERN_INVALID_VALUE;

  if (!MACH_PORT_VALID(name))
   return KERN_INVALID_RIGHT;

  kr = ipc_port_translate_receive(space, name, &port);
  if (kr != KERN_SUCCESS)
   return kr;



  if (ip_kotype(port) != IKOT_NONE) {
   ip_unlock(port);
   return KERN_INVALID_RIGHT;
  }

  ipc_port_pdrequest(port, notify, &previous);


  *previousp = previous;
  break;
     }

     case 130: {
  ipc_port_t port;

  if (!MACH_PORT_VALID(name))
   return KERN_INVALID_RIGHT;

  kr = ipc_port_translate_receive(space, name, &port);
  if (kr != KERN_SUCCESS)
   return kr;


  ipc_port_nsrequest(port, sync, notify, previousp);

  break;
     }

     case 128:

      if (!MACH_PORT_VALID(name)) {
         return KERN_INVALID_ARGUMENT;
  }

  kr = ipc_right_request_alloc(space, name, sync != 0,
          TRUE, notify, previousp);
  if (kr != KERN_SUCCESS)
   return kr;
  break;

     case 131:

      if (!MACH_PORT_VALID(name)) {





         return KERN_INVALID_ARGUMENT;
  }

  kr = ipc_right_request_alloc(space, name, sync != 0,
          FALSE, notify, previousp);
  if (kr != KERN_SUCCESS)
   return kr;
  break;

     default:
  return KERN_INVALID_VALUE;
 }

 return KERN_SUCCESS;
}
