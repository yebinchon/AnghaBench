
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {struct mbuf* sb_mb; struct mbuf* sb_lastrecord; struct mbuf* sb_mbtail; } ;
struct socket {TYPE_2__ so_snd; TYPE_1__* so_msg_state; } ;
struct msg_priq {int msgq_flags; scalar_t__ msgq_bytes; struct mbuf* msgq_lastmsg; int * msgq_tail; struct mbuf* msgq_head; } ;
struct mbuf {scalar_t__ m_len; int m_flags; struct mbuf* m_next; struct mbuf* m_nextpkt; } ;
typedef scalar_t__ int32_t ;
struct TYPE_5__ {scalar_t__ msg_serial_bytes; struct msg_priq* msg_priq; } ;


 int MSGQ_MSG_NOTDONE ;
 scalar_t__ MSG_PRI_MAX ;
 scalar_t__ MSG_PRI_MIN ;
 int M_EOR ;
 int VERIFY (int) ;
 int sblastmbufchk (TYPE_2__*,char*) ;
 int sblastrecordchk (TYPE_2__*,char*) ;
 int sbwakeup (TYPE_2__*) ;

void
sbpull_unordered_data(struct socket *so, int32_t off, int32_t len)
{
 int32_t topull, i;
 struct msg_priq *priq = ((void*)0);

 VERIFY(so->so_msg_state != ((void*)0));

 topull = (off + len) - so->so_msg_state->msg_serial_bytes;

 i = MSG_PRI_MAX;
 while (i >= MSG_PRI_MIN && topull > 0) {
  struct mbuf *m = ((void*)0), *mqhead = ((void*)0), *mend = ((void*)0);
  priq = &so->so_msg_state->msg_priq[i];
  if ((priq->msgq_flags & MSGQ_MSG_NOTDONE) &&
      priq->msgq_head == ((void*)0)) {





   VERIFY(priq->msgq_lastmsg == ((void*)0) &&
       priq->msgq_tail == ((void*)0));
   return;
  }
  if (priq->msgq_head != ((void*)0)) {
   int32_t bytes = 0, topull_tmp = topull;




   m = priq->msgq_head;
   mqhead = m;
   mend = m;






   while (mqhead->m_next != ((void*)0) && topull_tmp > 0) {
    bytes += mqhead->m_len;
    topull_tmp -= mqhead->m_len;
    mend = mqhead;
    mqhead = mqhead->m_next;
   }

   if (mqhead->m_next == ((void*)0)) {






    bytes += mqhead->m_len;
    mend = mqhead;
    mqhead = m->m_nextpkt;
    if (!(mend->m_flags & M_EOR)) {





     priq->msgq_flags |= MSGQ_MSG_NOTDONE;
    } else {

     mend->m_flags &= ~(M_EOR);
    }
   } else {

    mqhead->m_nextpkt = m->m_nextpkt;
   }
   priq->msgq_head = mqhead;






   if (priq->msgq_lastmsg == m)
    priq->msgq_lastmsg = priq->msgq_head;

   m->m_nextpkt = ((void*)0);
   mend->m_next = ((void*)0);

   if (priq->msgq_head == ((void*)0)) {

    priq->msgq_tail = ((void*)0);
    VERIFY(priq->msgq_lastmsg == ((void*)0));
   }


   if (so->so_snd.sb_mb == ((void*)0)) {
    so->so_snd.sb_mb = m;
   } else {
    so->so_snd.sb_mbtail->m_next = m;
   }

   priq->msgq_bytes -= bytes;
   VERIFY(priq->msgq_bytes >= 0);
   sbwakeup(&so->so_snd);

   so->so_msg_state->msg_serial_bytes += bytes;
   so->so_snd.sb_mbtail = mend;
   so->so_snd.sb_lastrecord = so->so_snd.sb_mb;

   topull =
       (off + len) - so->so_msg_state->msg_serial_bytes;

   if (priq->msgq_flags & MSGQ_MSG_NOTDONE)
    break;
  } else {
   --i;
  }
 }
 sblastrecordchk(&so->so_snd, "sbpull_unordered_data");
 sblastmbufchk(&so->so_snd, "sbpull_unordered_data");
}
