
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tseg_qent {int tqe_m; } ;
struct mptcb {scalar_t__ mpt_reassqlen; int mpt_segq; } ;


 struct tseg_qent* LIST_FIRST (int *) ;
 int LIST_REMOVE (struct tseg_qent*,int ) ;
 int m_freem (int ) ;
 int tcp_reass_zone ;
 int tqe_q ;
 int zfree (int ,struct tseg_qent*) ;

int
mptcp_freeq(struct mptcb *mp_tp)
{
 struct tseg_qent *q;
 int rv = 0;

 while ((q = LIST_FIRST(&mp_tp->mpt_segq)) != ((void*)0)) {
  LIST_REMOVE(q, tqe_q);
  m_freem(q->tqe_m);
  zfree(tcp_reass_zone, q);
  rv = 1;
 }
 mp_tp->mpt_reassqlen = 0;
 return (rv);
}
