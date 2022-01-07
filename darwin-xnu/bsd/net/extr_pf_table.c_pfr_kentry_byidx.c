
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int w ;
struct pfr_walktree {int pfrw_cnt; struct pfr_kentry* pfrw_kentry; int pfrw_op; } ;
struct pfr_ktable {TYPE_1__* pfrkt_ip6; TYPE_2__* pfrkt_ip4; } ;
struct pfr_kentry {int dummy; } ;
struct TYPE_4__ {int (* rnh_walktree ) (TYPE_2__*,int ,struct pfr_walktree*) ;} ;
struct TYPE_3__ {int (* rnh_walktree ) (TYPE_1__*,int ,struct pfr_walktree*) ;} ;




 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int PFRW_POOL_GET ;
 int bzero (struct pfr_walktree*,int) ;
 int pf_lock ;
 int pfr_walktree ;
 int stub1 (TYPE_2__*,int ,struct pfr_walktree*) ;
 int stub2 (TYPE_1__*,int ,struct pfr_walktree*) ;

__attribute__((used)) static struct pfr_kentry *
pfr_kentry_byidx(struct pfr_ktable *kt, int idx, int af)
{
 struct pfr_walktree w;

 LCK_MTX_ASSERT(pf_lock, LCK_MTX_ASSERT_OWNED);

 bzero(&w, sizeof (w));
 w.pfrw_op = PFRW_POOL_GET;
 w.pfrw_cnt = idx;

 switch (af) {
 default:
  return (((void*)0));
 }
}
