
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_addr_t ;
typedef int u_int64_t ;
struct pfr_ktableworkq {int dummy; } ;
struct pfr_ktable {int pfrkt_t; } ;


 int ACCEPT_FLAGS (int,int) ;
 scalar_t__ COPYIN (int,int *,int,int) ;
 int EFAULT ;
 int EINVAL ;
 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int PFR_FLAG_ADDRSTOO ;
 int PFR_FLAG_ATOMIC ;
 int PFR_FLAG_DUMMY ;
 struct pfr_ktable* RB_FIND (int ,int *,struct pfr_ktable*) ;
 int SLIST_INIT (struct pfr_ktableworkq*) ;
 int SLIST_INSERT_HEAD (struct pfr_ktableworkq*,struct pfr_ktable*,int ) ;
 int pf_calendar_time_second () ;
 int pf_lock ;
 int pfr_clstats_ktables (struct pfr_ktableworkq*,int ,int) ;
 int pfr_ktablehead ;
 int pfr_ktables ;
 int pfr_table_copyin_cleanup (int *) ;
 scalar_t__ pfr_validate_table (int *,int ,int ) ;
 int pfrkt_workq ;

int
pfr_clr_tstats(user_addr_t tbl, int size, int *nzero, int flags)
{
 struct pfr_ktableworkq workq;
 struct pfr_ktable *p, key;
 int i, xzero = 0;
 u_int64_t tzero = pf_calendar_time_second();

 LCK_MTX_ASSERT(pf_lock, LCK_MTX_ASSERT_OWNED);

 ACCEPT_FLAGS(flags, PFR_FLAG_ATOMIC | PFR_FLAG_DUMMY |
     PFR_FLAG_ADDRSTOO);
 SLIST_INIT(&workq);
 for (i = 0; i < size; i++, tbl += sizeof (key.pfrkt_t)) {
  if (COPYIN(tbl, &key.pfrkt_t, sizeof (key.pfrkt_t), flags))
   return (EFAULT);
  pfr_table_copyin_cleanup(&key.pfrkt_t);
  if (pfr_validate_table(&key.pfrkt_t, 0, 0))
   return (EINVAL);
  p = RB_FIND(pfr_ktablehead, &pfr_ktables, &key);
  if (p != ((void*)0)) {
   SLIST_INSERT_HEAD(&workq, p, pfrkt_workq);
   xzero++;
  }
 }
 if (!(flags & PFR_FLAG_DUMMY)) {
  pfr_clstats_ktables(&workq, tzero, flags & PFR_FLAG_ADDRSTOO);
 }
 if (nzero != ((void*)0))
  *nzero = xzero;
 return (0);
}
