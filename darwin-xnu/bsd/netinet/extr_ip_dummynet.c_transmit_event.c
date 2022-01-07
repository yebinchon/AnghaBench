
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int64_t ;
struct mbuf {struct mbuf* m_nextpkt; } ;
struct dn_pkt_tag {scalar_t__ dn_output_time; } ;
struct dn_pipe {struct mbuf* head; } ;


 int ASSERT (int) ;
 scalar_t__ DN_KEY_LEQ (scalar_t__,scalar_t__) ;
 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 scalar_t__ curr_time ;
 int dn_mutex ;
 struct dn_pkt_tag* dn_tag_get (struct mbuf*) ;
 int extract_heap ;
 int heap_insert (int *,scalar_t__,struct dn_pipe*) ;
 scalar_t__ serialize ;

__attribute__((used)) static void
transmit_event(struct dn_pipe *pipe, struct mbuf **head, struct mbuf **tail)
{
 struct mbuf *m ;
 struct dn_pkt_tag *pkt = ((void*)0);
 u_int64_t schedule_time;

 LCK_MTX_ASSERT(dn_mutex, LCK_MTX_ASSERT_OWNED);
        ASSERT(serialize >= 0);
 if (serialize == 0) {
  while ((m = pipe->head) != ((void*)0)) {
   pkt = dn_tag_get(m);
   if (!DN_KEY_LEQ(pkt->dn_output_time, curr_time))
    break;

   pipe->head = m->m_nextpkt;
   if (*tail != ((void*)0))
    (*tail)->m_nextpkt = m;
   else
    *head = m;
   *tail = m;
  }

  if (*tail != ((void*)0))
   (*tail)->m_nextpkt = ((void*)0);
 }

 schedule_time = pkt == ((void*)0) || DN_KEY_LEQ(pkt->dn_output_time, curr_time) ?
  curr_time + 1 : pkt->dn_output_time;


 if ((m = pipe->head) != ((void*)0)) {
  pkt = dn_tag_get(m);



  heap_insert(&extract_heap, schedule_time, pipe);
 }
}
