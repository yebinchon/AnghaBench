
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int mach_port_status_t ;
typedef int mach_port_name_t ;
struct TYPE_13__ {int mpl_qlimit; } ;
typedef TYPE_3__ mach_port_limits_t ;
typedef scalar_t__ mach_port_info_t ;
struct TYPE_14__ {int mpie_boost_cnt; int mpie_status; } ;
typedef TYPE_4__ mach_port_info_ext_t ;
typedef int mach_msg_type_number_t ;
typedef int kern_return_t ;
typedef scalar_t__ ipc_space_t ;
typedef TYPE_5__* ipc_port_t ;
typedef TYPE_6__* ipc_port_request_t ;
struct TYPE_16__ {TYPE_2__* ipr_size; } ;
struct TYPE_11__ {int imq_qlimit; } ;
struct TYPE_15__ {int ip_impcount; TYPE_6__* ip_requests; TYPE_1__ ip_messages; } ;
struct TYPE_12__ {int its_size; } ;


 TYPE_6__* IPR_NULL ;
 scalar_t__ IS_NULL ;
 int KERN_FAILURE ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_INVALID_RIGHT ;
 int KERN_INVALID_TASK ;
 int KERN_SUCCESS ;

 int MACH_PORT_DNREQUESTS_SIZE_COUNT ;

 int MACH_PORT_INFO_EXT_COUNT ;

 int MACH_PORT_LIMITS_INFO_COUNT ;

 int MACH_PORT_RECEIVE_STATUS_COUNT ;
 int MACH_PORT_VALID (int ) ;
 int ip_unlock (TYPE_5__*) ;
 int ipc_port_translate_receive (scalar_t__,int ,TYPE_5__**) ;
 int mach_port_get_status_helper (TYPE_5__*,int *) ;

kern_return_t
mach_port_get_attributes(
 ipc_space_t space,
 mach_port_name_t name,
 int flavor,
        mach_port_info_t info,
        mach_msg_type_number_t *count)
{
 ipc_port_t port;
 kern_return_t kr;

 if (space == IS_NULL)
  return KERN_INVALID_TASK;

        switch (flavor) {
        case 129: {
                mach_port_limits_t *lp = (mach_port_limits_t *)info;

                if (*count < MACH_PORT_LIMITS_INFO_COUNT)
                        return KERN_FAILURE;

                if (!MACH_PORT_VALID(name)) {
   *count = 0;
   break;
  }

                kr = ipc_port_translate_receive(space, name, &port);
                if (kr != KERN_SUCCESS)
                        return kr;


                lp->mpl_qlimit = port->ip_messages.imq_qlimit;
                *count = MACH_PORT_LIMITS_INFO_COUNT;
                ip_unlock(port);
                break;
        }

        case 128: {
  mach_port_status_t *statusp = (mach_port_status_t *)info;

  if (*count < MACH_PORT_RECEIVE_STATUS_COUNT)
   return KERN_FAILURE;

  if (!MACH_PORT_VALID(name))
   return KERN_INVALID_RIGHT;

  kr = ipc_port_translate_receive(space, name, &port);
  if (kr != KERN_SUCCESS)
   return kr;

  mach_port_get_status_helper(port, statusp);
  *count = MACH_PORT_RECEIVE_STATUS_COUNT;
  ip_unlock(port);
  break;
 }

 case 131: {
  ipc_port_request_t table;

                if (*count < MACH_PORT_DNREQUESTS_SIZE_COUNT)
                        return KERN_FAILURE;

  if (!MACH_PORT_VALID(name)) {
   *(int *)info = 0;
   break;
  }

                kr = ipc_port_translate_receive(space, name, &port);
                if (kr != KERN_SUCCESS)
                        return kr;


  table = port->ip_requests;
  if (table == IPR_NULL)
   *(int *)info = 0;
  else
   *(int *)info = table->ipr_size->its_size;
                *count = MACH_PORT_DNREQUESTS_SIZE_COUNT;
                ip_unlock(port);
  break;
 }

 case 130: {
  mach_port_info_ext_t *mp_info = (mach_port_info_ext_t *)info;
  if (*count < MACH_PORT_INFO_EXT_COUNT)
   return KERN_FAILURE;

  if (!MACH_PORT_VALID(name))
   return KERN_INVALID_RIGHT;

  kr = ipc_port_translate_receive(space, name, &port);
  if (kr != KERN_SUCCESS)
   return kr;

  mach_port_get_status_helper(port, &mp_info->mpie_status);
  mp_info->mpie_boost_cnt = port->ip_impcount;
  *count = MACH_PORT_INFO_EXT_COUNT;
  ip_unlock(port);
  break;
 }

        default:
  return KERN_INVALID_ARGUMENT;

        }

 return KERN_SUCCESS;
}
