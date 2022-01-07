
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_addr_t ;
typedef int u_int64_t ;
struct pfr_table {int dummy; } ;
struct pfr_ktable {int pfrkt_flags; } ;
struct pfr_kentryworkq {int dummy; } ;
struct pfr_kentry {scalar_t__ pfrke_not; } ;
struct pfr_addr {scalar_t__ pfra_not; void* pfra_fback; } ;
typedef int ad ;


 int ACCEPT_FLAGS (int,int) ;
 scalar_t__ COPYIN (int,struct pfr_addr*,int,int) ;
 scalar_t__ COPYOUT (struct pfr_addr*,int,int,int) ;
 int EFAULT ;
 int EINVAL ;
 int ENOMEM ;
 int EPERM ;
 int ESRCH ;
 void* PFR_FB_ADDED ;
 void* PFR_FB_CONFLICT ;
 void* PFR_FB_DUPLICATE ;
 void* PFR_FB_NONE ;
 int PFR_FLAG_ATOMIC ;
 int PFR_FLAG_DUMMY ;
 int PFR_FLAG_FEEDBACK ;
 int PFR_FLAG_USERIOCTL ;
 int PFR_TFLAG_ACTIVE ;
 int PFR_TFLAG_CONST ;
 int SLIST_INIT (struct pfr_kentryworkq*) ;
 int SLIST_INSERT_HEAD (struct pfr_kentryworkq*,struct pfr_kentry*,int ) ;
 int pf_calendar_time_second () ;
 int pfr_clean_node_mask (struct pfr_ktable*,struct pfr_kentryworkq*) ;
 struct pfr_kentry* pfr_create_kentry (struct pfr_addr*,int) ;
 struct pfr_ktable* pfr_create_ktable (int *,int ,int ) ;
 int pfr_destroy_kentries (struct pfr_kentryworkq*) ;
 int pfr_destroy_kentry (struct pfr_kentry*) ;
 int pfr_destroy_ktable (struct pfr_ktable*,int ) ;
 int pfr_insert_kentries (struct pfr_ktable*,struct pfr_kentryworkq*,int ) ;
 struct pfr_kentry* pfr_lookup_addr (struct pfr_ktable*,struct pfr_addr*,int) ;
 struct pfr_ktable* pfr_lookup_table (struct pfr_table*) ;
 int pfr_nulltable ;
 int pfr_reset_feedback (int,int,int) ;
 scalar_t__ pfr_route_kentry (struct pfr_ktable*,struct pfr_kentry*) ;
 scalar_t__ pfr_validate_addr (struct pfr_addr*) ;
 scalar_t__ pfr_validate_table (struct pfr_table*,int ,int) ;
 int pfrke_workq ;
 int senderr (int) ;

int
pfr_add_addrs(struct pfr_table *tbl, user_addr_t _addr, int size,
    int *nadd, int flags)
{
 struct pfr_ktable *kt, *tmpkt;
 struct pfr_kentryworkq workq;
 struct pfr_kentry *p, *q;
 struct pfr_addr ad;
 int i, rv, xadd = 0;
 user_addr_t addr = _addr;
 u_int64_t tzero = pf_calendar_time_second();

 ACCEPT_FLAGS(flags, PFR_FLAG_ATOMIC | PFR_FLAG_DUMMY |
     PFR_FLAG_FEEDBACK);
 if (pfr_validate_table(tbl, 0, flags & PFR_FLAG_USERIOCTL))
  return (EINVAL);
 kt = pfr_lookup_table(tbl);
 if (kt == ((void*)0) || !(kt->pfrkt_flags & PFR_TFLAG_ACTIVE))
  return (ESRCH);
 if (kt->pfrkt_flags & PFR_TFLAG_CONST)
  return (EPERM);
 tmpkt = pfr_create_ktable(&pfr_nulltable, 0, 0);
 if (tmpkt == ((void*)0))
  return (ENOMEM);
 SLIST_INIT(&workq);
 for (i = 0; i < size; i++, addr += sizeof (ad)) {
  if (COPYIN(addr, &ad, sizeof (ad), flags))
   senderr(EFAULT);
  if (pfr_validate_addr(&ad))
   senderr(EINVAL);
  p = pfr_lookup_addr(kt, &ad, 1);
  q = pfr_lookup_addr(tmpkt, &ad, 1);
  if (flags & PFR_FLAG_FEEDBACK) {
   if (q != ((void*)0))
    ad.pfra_fback = PFR_FB_DUPLICATE;
   else if (p == ((void*)0))
    ad.pfra_fback = PFR_FB_ADDED;
   else if (p->pfrke_not != ad.pfra_not)
    ad.pfra_fback = PFR_FB_CONFLICT;
   else
    ad.pfra_fback = PFR_FB_NONE;
  }
  if (p == ((void*)0) && q == ((void*)0)) {
   p = pfr_create_kentry(&ad,
       !(flags & PFR_FLAG_USERIOCTL));
   if (p == ((void*)0))
    senderr(ENOMEM);
   if (pfr_route_kentry(tmpkt, p)) {
    pfr_destroy_kentry(p);
    ad.pfra_fback = PFR_FB_NONE;
   } else {
    SLIST_INSERT_HEAD(&workq, p, pfrke_workq);
    xadd++;
   }
  }
  if (flags & PFR_FLAG_FEEDBACK)
   if (COPYOUT(&ad, addr, sizeof (ad), flags))
    senderr(EFAULT);
 }
 pfr_clean_node_mask(tmpkt, &workq);
 if (!(flags & PFR_FLAG_DUMMY)) {
  pfr_insert_kentries(kt, &workq, tzero);
 } else
  pfr_destroy_kentries(&workq);
 if (nadd != ((void*)0))
  *nadd = xadd;
 pfr_destroy_ktable(tmpkt, 0);
 return (0);
_bad:
 pfr_clean_node_mask(tmpkt, &workq);
 pfr_destroy_kentries(&workq);
 if (flags & PFR_FLAG_FEEDBACK)
  pfr_reset_feedback(_addr, size, flags);
 pfr_destroy_ktable(tmpkt, 0);
 return (rv);
}
