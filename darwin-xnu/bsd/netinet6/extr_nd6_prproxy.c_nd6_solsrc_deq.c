
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nd_prefix {int ndpr_stateflags; int ndpr_prproxy_sols; } ;
struct in6_addr {int dummy; } ;
struct TYPE_2__ {struct in6_addr taddr; } ;
struct nd6_prproxy_soltgt {scalar_t__ soltgt_cnt; int soltgt_q; TYPE_1__ soltgt_key; } ;
struct nd6_prproxy_solsrc {struct ifnet* solsrc_ifp; struct in6_addr solsrc_saddr; } ;
struct ifnet {int dummy; } ;
typedef int boolean_t ;


 int FALSE ;
 int NDPRF_IFSCOPE ;
 int NDPRF_ONLINK ;
 int NDPRF_PRPROXY ;
 int NDPR_LOCK_ASSERT_HELD (struct nd_prefix*) ;
 struct nd6_prproxy_soltgt* RB_FIND (int ,int *,struct nd6_prproxy_soltgt*) ;
 scalar_t__ TAILQ_EMPTY (int *) ;
 struct nd6_prproxy_solsrc* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct nd6_prproxy_solsrc*,int ) ;
 int TRUE ;
 int VERIFY (int) ;
 int bzero (struct in6_addr*,int) ;
 int nd6_solsrc_free (struct nd6_prproxy_solsrc*) ;
 int prproxy_sols_tree ;
 int solsrc_tqe ;

__attribute__((used)) static boolean_t
nd6_solsrc_deq(struct nd_prefix *pr, struct in6_addr *taddr,
    struct in6_addr *daddr, struct ifnet **ifp)
{
 struct nd6_prproxy_soltgt find, *soltgt;
 struct nd6_prproxy_solsrc *ssrc;

 NDPR_LOCK_ASSERT_HELD(pr);
 VERIFY(!(pr->ndpr_stateflags & NDPRF_IFSCOPE));
 VERIFY((pr->ndpr_stateflags & (NDPRF_ONLINK|NDPRF_PRPROXY)) ==
     (NDPRF_ONLINK|NDPRF_PRPROXY));

 bzero(daddr, sizeof (*daddr));
 *ifp = ((void*)0);

 find.soltgt_key.taddr = *taddr;

 soltgt = RB_FIND(prproxy_sols_tree, &pr->ndpr_prproxy_sols, &find);
 if (soltgt == ((void*)0) || soltgt->soltgt_cnt == 0) {
  VERIFY(soltgt == ((void*)0) || TAILQ_EMPTY(&soltgt->soltgt_q));
  return (FALSE);
 }

 VERIFY(soltgt->soltgt_cnt != 0);
 --soltgt->soltgt_cnt;
 ssrc = TAILQ_FIRST(&soltgt->soltgt_q);
 VERIFY(ssrc != ((void*)0));
 TAILQ_REMOVE(&soltgt->soltgt_q, ssrc, solsrc_tqe);
 *daddr = *(&ssrc->solsrc_saddr);
 *ifp = ssrc->solsrc_ifp;
 nd6_solsrc_free(ssrc);

 return (TRUE);
}
