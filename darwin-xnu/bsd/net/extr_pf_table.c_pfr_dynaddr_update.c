
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int w ;
struct pfr_walktree {struct pfi_dynaddr* pfrw_dyn; int pfrw_op; } ;
struct pfr_ktable {TYPE_1__* pfrkt_ip6; TYPE_2__* pfrkt_ip4; } ;
struct pfi_dynaddr {scalar_t__ pfid_af; scalar_t__ pfid_acnt6; scalar_t__ pfid_acnt4; } ;
struct TYPE_4__ {int (* rnh_walktree ) (TYPE_2__*,int ,struct pfr_walktree*) ;} ;
struct TYPE_3__ {int (* rnh_walktree ) (TYPE_1__*,int ,struct pfr_walktree*) ;} ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int PFRW_DYNADDR_UPDATE ;
 int bzero (struct pfr_walktree*,int) ;
 int pf_lock ;
 int pfr_walktree ;
 int stub1 (TYPE_2__*,int ,struct pfr_walktree*) ;
 int stub2 (TYPE_1__*,int ,struct pfr_walktree*) ;

void
pfr_dynaddr_update(struct pfr_ktable *kt, struct pfi_dynaddr *dyn)
{
 struct pfr_walktree w;

 LCK_MTX_ASSERT(pf_lock, LCK_MTX_ASSERT_OWNED);

 bzero(&w, sizeof (w));
 w.pfrw_op = PFRW_DYNADDR_UPDATE;
 w.pfrw_dyn = dyn;

 dyn->pfid_acnt4 = 0;
 dyn->pfid_acnt6 = 0;
 if (!dyn->pfid_af || dyn->pfid_af == AF_INET)
  (void) kt->pfrkt_ip4->rnh_walktree(kt->pfrkt_ip4,
      pfr_walktree, &w);
 if (!dyn->pfid_af || dyn->pfid_af == AF_INET6)
  (void) kt->pfrkt_ip6->rnh_walktree(kt->pfrkt_ip6,
      pfr_walktree, &w);
}
