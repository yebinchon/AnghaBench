
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nd_defrouter {int rtaddr; struct ifnet* ifp; } ;
struct in6_addr {int dummy; } ;
struct ifnet {int dummy; } ;


 scalar_t__ IN6_ARE_ADDR_EQUAL (struct in6_addr*,int *) ;
 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int NDDR_ADDREF_LOCKED (struct nd_defrouter*) ;
 int NDDR_LOCK (struct nd_defrouter*) ;
 int NDDR_UNLOCK (struct nd_defrouter*) ;
 struct nd_defrouter* TAILQ_FIRST (int *) ;
 struct nd_defrouter* TAILQ_NEXT (struct nd_defrouter*,int ) ;
 int dr_entry ;
 int nd6_mutex ;
 int nd_defrouter ;

struct nd_defrouter *
defrouter_lookup(
 struct in6_addr *addr,
 struct ifnet *ifp)
{
 struct nd_defrouter *dr;

 LCK_MTX_ASSERT(nd6_mutex, LCK_MTX_ASSERT_OWNED);

 for (dr = TAILQ_FIRST(&nd_defrouter); dr;
     dr = TAILQ_NEXT(dr, dr_entry)) {
  NDDR_LOCK(dr);
  if (dr->ifp == ifp && IN6_ARE_ADDR_EQUAL(addr, &dr->rtaddr)) {
   NDDR_ADDREF_LOCKED(dr);
   NDDR_UNLOCK(dr);
   return (dr);
  }
  NDDR_UNLOCK(dr);
 }

 return (((void*)0));
}
