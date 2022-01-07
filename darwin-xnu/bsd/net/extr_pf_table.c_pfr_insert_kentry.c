
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int64_t ;
struct pfr_ktable {int pfrkt_cnt; } ;
struct pfr_kentry {int pfrke_tzero; } ;
struct pfr_addr {int dummy; } ;


 int EINVAL ;
 struct pfr_kentry* pfr_create_kentry (struct pfr_addr*,int) ;
 struct pfr_kentry* pfr_lookup_addr (struct pfr_ktable*,struct pfr_addr*,int) ;
 int pfr_route_kentry (struct pfr_ktable*,struct pfr_kentry*) ;

int
pfr_insert_kentry(struct pfr_ktable *kt, struct pfr_addr *ad, u_int64_t tzero)
{
 struct pfr_kentry *p;
 int rv;

 p = pfr_lookup_addr(kt, ad, 1);
 if (p != ((void*)0))
  return (0);
 p = pfr_create_kentry(ad, 1);
 if (p == ((void*)0))
  return (EINVAL);

 rv = pfr_route_kentry(kt, p);
 if (rv)
  return (rv);

 p->pfrke_tzero = tzero;
 kt->pfrkt_cnt++;

 return (0);
}
