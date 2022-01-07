
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user_addr_t ;
struct pfr_table {int dummy; } ;
struct pfr_ktable {int pfrkt_flags; } ;
struct pfr_kentry {scalar_t__ pfrke_not; } ;
struct pfr_addr {int pfra_fback; } ;
typedef int ad ;


 int ACCEPT_FLAGS (int,int) ;
 scalar_t__ ADDR_NETWORK (struct pfr_addr*) ;
 scalar_t__ COPYIN (int,struct pfr_addr*,int,int) ;
 scalar_t__ COPYOUT (struct pfr_addr*,int,int,int) ;
 int EFAULT ;
 int EINVAL ;
 int ESRCH ;
 int PFR_FB_MATCH ;
 int PFR_FB_NONE ;
 int PFR_FB_NOTMATCH ;
 int PFR_FLAG_REPLACE ;
 int PFR_TFLAG_ACTIVE ;
 int pfr_copyout_addr (struct pfr_addr*,struct pfr_kentry*) ;
 struct pfr_kentry* pfr_lookup_addr (struct pfr_ktable*,struct pfr_addr*,int ) ;
 struct pfr_ktable* pfr_lookup_table (struct pfr_table*) ;
 scalar_t__ pfr_validate_addr (struct pfr_addr*) ;
 scalar_t__ pfr_validate_table (struct pfr_table*,int ,int ) ;

int
pfr_tst_addrs(struct pfr_table *tbl, user_addr_t addr, int size,
 int *nmatch, int flags)
{
 struct pfr_ktable *kt;
 struct pfr_kentry *p;
 struct pfr_addr ad;
 int i, xmatch = 0;

 ACCEPT_FLAGS(flags, PFR_FLAG_REPLACE);
 if (pfr_validate_table(tbl, 0, 0))
  return (EINVAL);
 kt = pfr_lookup_table(tbl);
 if (kt == ((void*)0) || !(kt->pfrkt_flags & PFR_TFLAG_ACTIVE))
  return (ESRCH);

 for (i = 0; i < size; i++, addr += sizeof (ad)) {
  if (COPYIN(addr, &ad, sizeof (ad), flags))
   return (EFAULT);
  if (pfr_validate_addr(&ad))
   return (EINVAL);
  if (ADDR_NETWORK(&ad))
   return (EINVAL);
  p = pfr_lookup_addr(kt, &ad, 0);
  if (flags & PFR_FLAG_REPLACE)
   pfr_copyout_addr(&ad, p);
  ad.pfra_fback = (p == ((void*)0)) ? PFR_FB_NONE :
      (p->pfrke_not ? PFR_FB_NOTMATCH : PFR_FB_MATCH);
  if (p != ((void*)0) && !p->pfrke_not)
   xmatch++;
  if (COPYOUT(&ad, addr, sizeof (ad), flags))
   return (EFAULT);
 }
 if (nmatch != ((void*)0))
  *nmatch = xmatch;
 return (0);
}
