
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mach_port_seqno_t ;
typedef int mach_msg_size_t ;
typedef int mach_msg_max_trailer_t ;
typedef int mach_msg_id_t ;
typedef int ipc_mqueue_t ;
typedef int ipc_kmsg_t ;


 int imq_lock (int ) ;
 int imq_unlock (int ) ;
 unsigned int ipc_mqueue_peek_locked (int ,int *,int *,int *,int *,int *) ;

unsigned
ipc_mqueue_peek(ipc_mqueue_t mq,
  mach_port_seqno_t * seqnop,
  mach_msg_size_t * msg_sizep,
  mach_msg_id_t * msg_idp,
  mach_msg_max_trailer_t * msg_trailerp,
  ipc_kmsg_t *kmsgp)
{
 unsigned res;

 imq_lock(mq);

 res = ipc_mqueue_peek_locked(mq, seqnop, msg_sizep, msg_idp,
         msg_trailerp, kmsgp);

 imq_unlock(mq);
 return res;
}
