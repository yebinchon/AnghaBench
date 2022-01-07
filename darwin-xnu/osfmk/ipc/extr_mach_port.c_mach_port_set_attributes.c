
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int natural_t ;
typedef int mach_port_name_t ;
struct TYPE_8__ {int mpl_qlimit; } ;
typedef TYPE_1__ mach_port_limits_t ;
typedef scalar_t__ mach_port_info_t ;
typedef int mach_msg_type_number_t ;
typedef int kern_return_t ;
typedef scalar_t__ ipc_space_t ;
typedef TYPE_2__* ipc_port_t ;
typedef int ipc_importance_task_t ;
struct TYPE_10__ {int task_imp_base; } ;
struct TYPE_9__ {int ip_tempowner; int ip_impdonation; int ip_specialreply; int ip_impcount; int ip_imp_task; int ip_messages; } ;


 int IIT_NULL ;
 scalar_t__ IS_NULL ;
 int KERN_FAILURE ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_INVALID_RIGHT ;
 int KERN_INVALID_TASK ;
 int KERN_INVALID_VALUE ;
 int KERN_SUCCESS ;


 int MACH_PORT_DNREQUESTS_SIZE_COUNT ;


 int MACH_PORT_LIMITS_INFO_COUNT ;
 int MACH_PORT_QLIMIT_MAX ;

 int MACH_PORT_VALID (int ) ;
 int assert (int ) ;
 TYPE_7__* current_task () ;
 int ip_kotype (TYPE_2__*) ;
 int ip_unlock (TYPE_2__*) ;
 int ipc_importance_task_drop_internal_assertion (int ,int ) ;
 int ipc_importance_task_is_any_receiver_type (int ) ;
 int ipc_importance_task_release (int ) ;
 int ipc_mqueue_set_qlimit (int *,int ) ;
 int ipc_port_request_grow (TYPE_2__*,int) ;
 int ipc_port_translate_receive (scalar_t__,int ,TYPE_2__**) ;
 int is_ipc_kobject (int ) ;

kern_return_t
mach_port_set_attributes(
 ipc_space_t space,
 mach_port_name_t name,
 int flavor,
        mach_port_info_t info,
        mach_msg_type_number_t count)
{
 ipc_port_t port;
 kern_return_t kr;

 if (space == IS_NULL)
  return KERN_INVALID_TASK;

        switch (flavor) {

        case 129: {
                mach_port_limits_t *mplp = (mach_port_limits_t *)info;

                if (count < MACH_PORT_LIMITS_INFO_COUNT)
                        return KERN_FAILURE;

                if (mplp->mpl_qlimit > MACH_PORT_QLIMIT_MAX)
                        return KERN_INVALID_VALUE;

  if (!MACH_PORT_VALID(name))
   return KERN_INVALID_RIGHT;

                kr = ipc_port_translate_receive(space, name, &port);
                if (kr != KERN_SUCCESS)
                        return kr;


                ipc_mqueue_set_qlimit(&port->ip_messages, mplp->mpl_qlimit);
                ip_unlock(port);
                break;
        }
 case 131: {
                if (count < MACH_PORT_DNREQUESTS_SIZE_COUNT)
                        return KERN_FAILURE;

  if (!MACH_PORT_VALID(name))
   return KERN_INVALID_RIGHT;

                kr = ipc_port_translate_receive(space, name, &port);
                if (kr != KERN_SUCCESS)
                        return kr;


  kr = ipc_port_request_grow(port, *(int *)info);
  if (kr != KERN_SUCCESS)
   return kr;
  break;
 }
 case 128:
  if (!MACH_PORT_VALID(name))
   return KERN_INVALID_RIGHT;

  ipc_importance_task_t release_imp_task = IIT_NULL;
  natural_t assertcnt = 0;

  kr = ipc_port_translate_receive(space, name, &port);
  if (kr != KERN_SUCCESS)
   return kr;







  if (is_ipc_kobject(ip_kotype(port)) || port->ip_specialreply) {
   ip_unlock(port);
   return KERN_INVALID_ARGUMENT;
  }

  if (port->ip_tempowner != 0) {
   if (IIT_NULL != port->ip_imp_task) {
    release_imp_task = port->ip_imp_task;
    port->ip_imp_task = IIT_NULL;
    assertcnt = port->ip_impcount;
   }
  } else {
   assertcnt = port->ip_impcount;
  }

  port->ip_impdonation = 1;
  port->ip_tempowner = 1;
  ip_unlock(port);
  if (release_imp_task != IIT_NULL)
   ipc_importance_task_release(release_imp_task);


  break;
        default:
  return KERN_INVALID_ARGUMENT;

        }
 return KERN_SUCCESS;
}
