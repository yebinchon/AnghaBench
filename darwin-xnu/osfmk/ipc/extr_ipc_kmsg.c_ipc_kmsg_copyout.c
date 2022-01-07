
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vm_map_t ;
typedef int mach_msg_return_t ;
typedef int mach_msg_option_t ;
typedef int mach_msg_body_t ;
typedef int ipc_space_t ;
typedef TYPE_2__* ipc_kmsg_t ;
struct TYPE_7__ {TYPE_1__* ikm_header; } ;
struct TYPE_6__ {int msgh_bits; } ;


 int MACH_MSGH_BITS_COMPLEX ;
 int MACH_MSG_SUCCESS ;
 int MACH_RCV_BODY_ERROR ;
 int ipc_kmsg_copyout_body (TYPE_2__*,int ,int ,int *) ;
 int ipc_kmsg_copyout_header (TYPE_2__*,int ,int ) ;

mach_msg_return_t
ipc_kmsg_copyout(
 ipc_kmsg_t kmsg,
 ipc_space_t space,
 vm_map_t map,
 mach_msg_body_t *slist,
  mach_msg_option_t option)
{
 mach_msg_return_t mr;

 mr = ipc_kmsg_copyout_header(kmsg, space, option);
 if (mr != MACH_MSG_SUCCESS) {
  return mr;
 }

 if (kmsg->ikm_header->msgh_bits & MACH_MSGH_BITS_COMPLEX) {
  mr = ipc_kmsg_copyout_body(kmsg, space, map, slist);

  if (mr != MACH_MSG_SUCCESS)
   mr |= MACH_RCV_BODY_ERROR;
 }

 return mr;
}
