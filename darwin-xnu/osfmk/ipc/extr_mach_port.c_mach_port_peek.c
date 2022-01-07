
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int mach_port_seqno_t ;
typedef int mach_port_name_t ;
typedef int mach_msg_type_number_t ;
typedef int mach_msg_trailer_type_t ;
typedef int mach_msg_trailer_info_t ;
typedef int mach_msg_size_t ;
struct TYPE_7__ {int msgh_seqno; } ;
typedef TYPE_1__ mach_msg_max_trailer_t ;
typedef int mach_msg_id_t ;
typedef scalar_t__ kern_return_t ;
typedef scalar_t__ ipc_space_t ;
typedef TYPE_2__* ipc_port_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_8__ {int ip_messages; } ;


 scalar_t__ GET_RCV_ELEMENTS (int ) ;
 scalar_t__ IS_NULL ;
 scalar_t__ KERN_FAILURE ;
 scalar_t__ KERN_INVALID_NAME ;
 scalar_t__ KERN_INVALID_RIGHT ;
 scalar_t__ KERN_INVALID_TASK ;
 scalar_t__ KERN_INVALID_VALUE ;
 scalar_t__ KERN_SUCCESS ;
 int MACH_PORT_VALID (int ) ;
 scalar_t__ MACH_RCV_TRAILER_AUDIT ;
 int REQUESTED_TRAILER_SIZE (scalar_t__,int ) ;
 scalar_t__ TRUE ;
 int ip_unlock (TYPE_2__*) ;
 scalar_t__ ipc_mqueue_peek (int *,int *,int *,int *,TYPE_1__*,int *) ;
 scalar_t__ ipc_port_translate_receive (scalar_t__,int ,TYPE_2__**) ;
 int kGUARD_EXC_INVALID_NAME ;
 int kGUARD_EXC_INVALID_RIGHT ;
 int kGUARD_EXC_INVALID_VALUE ;
 int mach_port_guard_exception (int ,int ,int ,int ) ;
 int memcpy (int ,TYPE_1__*,int ) ;

kern_return_t
mach_port_peek(
 ipc_space_t space,
 mach_port_name_t name,
 mach_msg_trailer_type_t trailer_type,
 mach_port_seqno_t *seqnop,
 mach_msg_size_t *msg_sizep,
 mach_msg_id_t *msg_idp,
 mach_msg_trailer_info_t trailer_infop,
 mach_msg_type_number_t *trailer_sizep)
{
 ipc_port_t port;
 kern_return_t kr;
 boolean_t found;
 mach_msg_max_trailer_t max_trailer;

 if (space == IS_NULL)
  return KERN_INVALID_TASK;

 if (!MACH_PORT_VALID(name))
  return KERN_INVALID_RIGHT;





 if (GET_RCV_ELEMENTS(trailer_type) > MACH_RCV_TRAILER_AUDIT ||
     REQUESTED_TRAILER_SIZE(TRUE, trailer_type) > *trailer_sizep) {
  mach_port_guard_exception(name, 0, 0, kGUARD_EXC_INVALID_VALUE);
  return KERN_INVALID_VALUE;
 }

 *trailer_sizep = REQUESTED_TRAILER_SIZE(TRUE, trailer_type);

 kr = ipc_port_translate_receive(space, name, &port);
 if (kr != KERN_SUCCESS) {
  mach_port_guard_exception(name, 0, 0,
                            ((KERN_INVALID_NAME == kr) ?
                             kGUARD_EXC_INVALID_NAME :
                             kGUARD_EXC_INVALID_RIGHT));
  return kr;
 }



 found = ipc_mqueue_peek(&port->ip_messages, seqnop,
    msg_sizep, msg_idp, &max_trailer, ((void*)0));
 ip_unlock(port);

 if (found != TRUE)
  return KERN_FAILURE;

 max_trailer.msgh_seqno = *seqnop;
 memcpy(trailer_infop, &max_trailer, *trailer_sizep);

 return KERN_SUCCESS;
}
