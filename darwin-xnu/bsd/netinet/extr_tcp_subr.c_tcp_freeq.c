
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tseg_qent {int tqe_m; } ;
struct tcpcb {scalar_t__ t_reassqlen; int t_segq; } ;


 struct tseg_qent* LIST_FIRST (int *) ;
 int LIST_REMOVE (struct tseg_qent*,int ) ;
 int m_freem (int ) ;
 int tcp_reass_zone ;
 int tqe_q ;
 int zfree (int ,struct tseg_qent*) ;

int
tcp_freeq(struct tcpcb *tp)
{
 struct tseg_qent *q;
 int rv = 0;

 while ((q = LIST_FIRST(&tp->t_segq)) != ((void*)0)) {
  LIST_REMOVE(q, tqe_q);
  m_freem(q->tqe_m);
  zfree(tcp_reass_zone, q);
  rv = 1;
 }
 tp->t_reassqlen = 0;
 return (rv);
}
