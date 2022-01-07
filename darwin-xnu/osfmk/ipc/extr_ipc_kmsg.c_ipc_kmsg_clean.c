
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int mach_msg_descriptor_t ;
struct TYPE_8__ {int msgh_descriptor_count; } ;
typedef TYPE_2__ mach_msg_body_t ;
typedef int mach_msg_bits_t ;
typedef scalar_t__ ipc_object_t ;
typedef TYPE_3__* ipc_kmsg_t ;
struct TYPE_9__ {TYPE_1__* ikm_header; scalar_t__ ikm_voucher; } ;
struct TYPE_7__ {int msgh_bits; scalar_t__ msgh_local_port; scalar_t__ msgh_remote_port; } ;


 scalar_t__ IO_VALID (scalar_t__) ;
 scalar_t__ IP_NULL ;
 int MACH_MSGH_BITS_COMPLEX ;
 int MACH_MSGH_BITS_LOCAL (int) ;
 int MACH_MSGH_BITS_REMOTE (int) ;
 scalar_t__ MACH_MSGH_BITS_VOUCHER (int) ;
 scalar_t__ MACH_MSG_TYPE_MOVE_SEND ;
 int MACH_MSG_TYPE_PORT_SEND ;
 int assert (int) ;
 int ipc_importance_clean (TYPE_3__*) ;
 int ipc_kmsg_clean_body (TYPE_3__*,int ,int *) ;
 int ipc_object_destroy (scalar_t__,int ) ;
 int ipc_object_destroy_dest (scalar_t__,int ) ;

void
ipc_kmsg_clean(
 ipc_kmsg_t kmsg)
{
 ipc_object_t object;
 mach_msg_bits_t mbits;


 ipc_importance_clean(kmsg);

 mbits = kmsg->ikm_header->msgh_bits;
 object = (ipc_object_t) kmsg->ikm_header->msgh_remote_port;
 if (IO_VALID(object))
  ipc_object_destroy_dest(object, MACH_MSGH_BITS_REMOTE(mbits));

 object = (ipc_object_t) kmsg->ikm_header->msgh_local_port;
 if (IO_VALID(object))
  ipc_object_destroy(object, MACH_MSGH_BITS_LOCAL(mbits));

 object = (ipc_object_t) kmsg->ikm_voucher;
 if (IO_VALID(object)) {
  assert(MACH_MSGH_BITS_VOUCHER(mbits) == MACH_MSG_TYPE_MOVE_SEND);
  ipc_object_destroy(object, MACH_MSG_TYPE_PORT_SEND);
  kmsg->ikm_voucher = IP_NULL;
 }

 if (mbits & MACH_MSGH_BITS_COMPLEX) {
  mach_msg_body_t *body;

  body = (mach_msg_body_t *) (kmsg->ikm_header + 1);
  ipc_kmsg_clean_body(kmsg, body->msgh_descriptor_count,
        (mach_msg_descriptor_t *)(body + 1));
 }
}
