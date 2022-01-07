
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int vm_map_t ;
typedef TYPE_3__* thread_t ;
typedef scalar_t__ mach_vm_address_t ;
typedef int mach_port_seqno_t ;
typedef int mach_port_name_t ;
typedef int mach_msg_trailer_size_t ;
typedef scalar_t__ mach_msg_size_t ;
typedef int mach_msg_return_t ;
typedef int mach_msg_option_t ;
typedef int ipc_space_t ;
typedef int ipc_object_t ;
typedef TYPE_4__* ipc_kmsg_t ;
struct TYPE_18__ {int ikm_qos_override; int ikm_qos; TYPE_2__* ikm_header; } ;
struct TYPE_17__ {int ith_state; scalar_t__ ith_msg_addr; scalar_t__ ith_rsize; int ith_option; int ith_qos_override; int ith_qos; int ith_msize; int ith_receiver_name; int ith_seqno; TYPE_4__* ith_kmsg; int ith_object; } ;
struct TYPE_16__ {TYPE_1__* msgh_remote_port; } ;
struct TYPE_15__ {int ip_context; } ;


 int FALSE ;
 int MACH_MSG_BODY_NULL ;
 int MACH_MSG_MASK ;
 int MACH_MSG_SUCCESS ;
 int MACH_RCV_BODY_ERROR ;
 int MACH_RCV_INVALID_DATA ;
 int MACH_RCV_LARGE ;
 int MACH_RCV_LARGE_IDENTITY ;
 int MACH_RCV_STACK ;
 int MACH_RCV_TOO_LARGE ;
 scalar_t__ copyout (char*,scalar_t__,int) ;
 int current_map () ;
 int current_space () ;
 TYPE_3__* current_thread () ;
 int io_release (int ) ;
 int ipc_importance_clean (TYPE_4__*) ;
 int ipc_importance_receive (TYPE_4__*,int) ;
 int ipc_importance_unreceive (TYPE_4__*,int) ;
 int ipc_kmsg_add_trailer (TYPE_4__*,int ,int,TYPE_3__*,int ,int ,int ) ;
 int ipc_kmsg_copyout (TYPE_4__*,int ,int ,int ,int) ;
 int ipc_kmsg_put (TYPE_4__*,int,scalar_t__,scalar_t__,int ,scalar_t__*) ;
 int ipc_voucher_receive_postprocessing (TYPE_4__*,int) ;
 int mach_msg_receive_results_complete (int ) ;
 int mach_msg_user_header_t ;
 int msg_receive_error (TYPE_4__*,int,scalar_t__,scalar_t__,int ,int ,scalar_t__*) ;
 int msgh_local_port ;
 int msgh_reserved ;
 int msgh_size ;
 scalar_t__ offsetof (int ,int ) ;

mach_msg_return_t
mach_msg_receive_results(
 mach_msg_size_t *sizep)
{
 thread_t self = current_thread();
 ipc_space_t space = current_space();
 vm_map_t map = current_map();

 ipc_object_t object = self->ith_object;
 mach_msg_return_t mr = self->ith_state;
 mach_vm_address_t rcv_addr = self->ith_msg_addr;
 mach_msg_size_t rcv_size = self->ith_rsize;
 mach_msg_option_t option = self->ith_option;
 ipc_kmsg_t kmsg = self->ith_kmsg;
 mach_port_seqno_t seqno = self->ith_seqno;

 mach_msg_trailer_size_t trailer_size;
 mach_msg_size_t size = 0;





 mach_msg_receive_results_complete(object);
 io_release(object);

 if (mr != MACH_MSG_SUCCESS) {

  if (mr == MACH_RCV_TOO_LARGE) {
   if (option & MACH_RCV_LARGE) {

    if ((option & MACH_RCV_STACK) == 0 &&
        rcv_size >= offsetof(mach_msg_user_header_t, msgh_reserved)) {







     if (option & MACH_RCV_LARGE_IDENTITY) {
      if (copyout((char *) &self->ith_receiver_name,
           rcv_addr + offsetof(mach_msg_user_header_t, msgh_local_port),
           sizeof(mach_port_name_t)))
       mr = MACH_RCV_INVALID_DATA;
     }
     if (copyout((char *) &self->ith_msize,
          rcv_addr + offsetof(mach_msg_user_header_t, msgh_size),
          sizeof(mach_msg_size_t)))
      mr = MACH_RCV_INVALID_DATA;
    }
   } else {


    ipc_importance_clean(kmsg);

    if (msg_receive_error(kmsg, option, rcv_addr, rcv_size, seqno, space, &size)
        == MACH_RCV_INVALID_DATA)
     mr = MACH_RCV_INVALID_DATA;
   }
  }

  if (sizep)
   *sizep = size;
  return mr;
 }
 ipc_voucher_receive_postprocessing(kmsg, option);

 trailer_size = ipc_kmsg_add_trailer(kmsg, space, option, self, seqno, FALSE,
   kmsg->ikm_header->msgh_remote_port->ip_context);

 mr = ipc_kmsg_copyout(kmsg, space, map, MACH_MSG_BODY_NULL, option);

 if (mr != MACH_MSG_SUCCESS) {


  ipc_importance_unreceive(kmsg, option);


  if ((mr &~ MACH_MSG_MASK) == MACH_RCV_BODY_ERROR) {
   if (ipc_kmsg_put(kmsg, option, rcv_addr, rcv_size, trailer_size, &size) == MACH_RCV_INVALID_DATA)
    mr = MACH_RCV_INVALID_DATA;
  } else {
   if (msg_receive_error(kmsg, option, rcv_addr, rcv_size, seqno, space, &size)
      == MACH_RCV_INVALID_DATA)
    mr = MACH_RCV_INVALID_DATA;
  }
 } else {

  self->ith_qos = kmsg->ikm_qos;
  self->ith_qos_override = kmsg->ikm_qos_override;
  mr = ipc_kmsg_put(kmsg, option, rcv_addr, rcv_size, trailer_size, &size);
 }

 if (sizep)
  *sizep = size;
 return mr;
}
