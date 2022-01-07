
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int w ;
typedef int user_addr_t ;
typedef int u_int64_t ;
struct pfr_walktree {int pfrw_free; int pfrw_flags; int pfrw_astats; int pfrw_op; } ;
struct pfr_table {int dummy; } ;
struct pfr_ktable {int pfrkt_flags; int pfrkt_cnt; TYPE_1__* pfrkt_ip6; TYPE_2__* pfrkt_ip4; } ;
struct pfr_kentryworkq {int dummy; } ;
struct TYPE_4__ {int (* rnh_walktree ) (TYPE_2__*,int ,struct pfr_walktree*) ;} ;
struct TYPE_3__ {int (* rnh_walktree ) (TYPE_1__*,int ,struct pfr_walktree*) ;} ;


 int ACCEPT_FLAGS (int,int ) ;
 int EINVAL ;
 int ENOTTY ;
 int ESRCH ;
 int PFRW_GET_ASTATS ;
 int PFR_FLAG_ATOMIC ;
 int PFR_FLAG_CLSTATS ;
 int PFR_TFLAG_ACTIVE ;
 int bzero (struct pfr_walktree*,int) ;
 int pf_calendar_time_second () ;
 int pfr_clstats_kentries (struct pfr_kentryworkq*,int ,int ) ;
 int pfr_enqueue_addrs (struct pfr_ktable*,struct pfr_kentryworkq*,int *,int ) ;
 struct pfr_ktable* pfr_lookup_table (struct pfr_table*) ;
 scalar_t__ pfr_validate_table (struct pfr_table*,int ,int ) ;
 int pfr_walktree ;
 int printf (char*,int) ;
 int stub1 (TYPE_2__*,int ,struct pfr_walktree*) ;
 int stub2 (TYPE_1__*,int ,struct pfr_walktree*) ;

int
pfr_get_astats(struct pfr_table *tbl, user_addr_t addr, int *size,
 int flags)
{
 struct pfr_ktable *kt;
 struct pfr_walktree w;
 struct pfr_kentryworkq workq;
 int rv;
 u_int64_t tzero = pf_calendar_time_second();


 ACCEPT_FLAGS(flags, PFR_FLAG_ATOMIC);
 if (pfr_validate_table(tbl, 0, 0))
  return (EINVAL);
 kt = pfr_lookup_table(tbl);
 if (kt == ((void*)0) || !(kt->pfrkt_flags & PFR_TFLAG_ACTIVE))
  return (ESRCH);
 if (kt->pfrkt_cnt > *size) {
  *size = kt->pfrkt_cnt;
  return (0);
 }

 bzero(&w, sizeof (w));
 w.pfrw_op = PFRW_GET_ASTATS;
 w.pfrw_astats = addr;
 w.pfrw_free = kt->pfrkt_cnt;
 w.pfrw_flags = flags;
 rv = kt->pfrkt_ip4->rnh_walktree(kt->pfrkt_ip4, pfr_walktree, &w);
 if (!rv)
  rv = kt->pfrkt_ip6->rnh_walktree(kt->pfrkt_ip6,
      pfr_walktree, &w);
 if (!rv && (flags & PFR_FLAG_CLSTATS)) {
  pfr_enqueue_addrs(kt, &workq, ((void*)0), 0);
  pfr_clstats_kentries(&workq, tzero, 0);
 }
 if (rv)
  return (rv);

 if (w.pfrw_free) {
  printf("pfr_get_astats: corruption detected (%d).\n",
      w.pfrw_free);
  return (ENOTTY);
 }
 *size = kt->pfrkt_cnt;
 return (0);
}
