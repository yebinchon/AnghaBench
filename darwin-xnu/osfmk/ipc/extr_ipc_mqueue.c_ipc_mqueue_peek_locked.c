
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
typedef scalar_t__ mach_port_seqno_t ;
typedef int mach_msg_size_t ;
typedef int mach_msg_max_trailer_t ;
typedef int mach_msg_id_t ;
typedef TYPE_2__* ipc_mqueue_t ;
typedef TYPE_3__* ipc_kmsg_t ;
typedef int * ipc_kmsg_queue_t ;
struct TYPE_13__ {TYPE_1__* ikm_header; } ;
struct TYPE_12__ {scalar_t__ imq_seqno; scalar_t__ imq_msgcount; int imq_messages; } ;
struct TYPE_11__ {int msgh_size; int msgh_id; } ;


 TYPE_3__* IKM_NULL ;
 int assert (int) ;
 int imq_is_set (TYPE_2__*) ;
 TYPE_3__* ipc_kmsg_queue_first (int *) ;
 TYPE_3__* ipc_kmsg_queue_next (int *,TYPE_3__*) ;
 int memcpy (int *,int *,int) ;
 scalar_t__ round_msg (int ) ;

unsigned
ipc_mqueue_peek_locked(ipc_mqueue_t mq,
         mach_port_seqno_t * seqnop,
         mach_msg_size_t * msg_sizep,
         mach_msg_id_t * msg_idp,
         mach_msg_max_trailer_t * msg_trailerp,
         ipc_kmsg_t *kmsgp)
{
 ipc_kmsg_queue_t kmsgq;
 ipc_kmsg_t kmsg;
 mach_port_seqno_t seqno, msgoff;
 unsigned res = 0;

 assert(!imq_is_set(mq));

 seqno = 0;
 if (seqnop != ((void*)0))
  seqno = *seqnop;

 if (seqno == 0) {
  seqno = mq->imq_seqno;
  msgoff = 0;
 } else if (seqno >= mq->imq_seqno &&
     seqno < mq->imq_seqno + mq->imq_msgcount) {
  msgoff = seqno - mq->imq_seqno;
 } else
  goto out;


 kmsgq = &mq->imq_messages;
 kmsg = ipc_kmsg_queue_first(kmsgq);
 while (msgoff-- && kmsg != IKM_NULL) {
  kmsg = ipc_kmsg_queue_next(kmsgq, kmsg);
 }
 if (kmsg == IKM_NULL)
  goto out;


 if (seqnop != ((void*)0))
  *seqnop = seqno;
 if (msg_sizep != ((void*)0))
  *msg_sizep = kmsg->ikm_header->msgh_size;
 if (msg_idp != ((void*)0))
  *msg_idp = kmsg->ikm_header->msgh_id;
 if (msg_trailerp != ((void*)0))
  memcpy(msg_trailerp,
         (mach_msg_max_trailer_t *)((vm_offset_t)kmsg->ikm_header +
        round_msg(kmsg->ikm_header->msgh_size)),
         sizeof(mach_msg_max_trailer_t));
 if (kmsgp != ((void*)0))
  *kmsgp = kmsg;

 res = 1;

out:
 return res;
}
