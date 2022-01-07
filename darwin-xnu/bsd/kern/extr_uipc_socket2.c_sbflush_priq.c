
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msg_priq {scalar_t__ msgq_flags; scalar_t__ msgq_bytes; int * msgq_lastmsg; struct mbuf* msgq_tail; struct mbuf* msgq_head; } ;
struct mbuf {int dummy; } ;


 int m_freem_list (struct mbuf*) ;

__attribute__((used)) static void
sbflush_priq(struct msg_priq *priq)
{
 struct mbuf *m;
 m = priq->msgq_head;
 if (m != ((void*)0))
  m_freem_list(m);
 priq->msgq_head = priq->msgq_tail = priq->msgq_lastmsg = ((void*)0);
 priq->msgq_bytes = priq->msgq_flags = 0;
}
