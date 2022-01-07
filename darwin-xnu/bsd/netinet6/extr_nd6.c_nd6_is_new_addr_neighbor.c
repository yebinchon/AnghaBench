
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ u_int32_t ;
struct sockaddr_in6 {scalar_t__ sin6_scope_id; int sin6_addr; } ;
struct TYPE_3__ {int sin6_addr; } ;
struct nd_prefix {int ndpr_stateflags; int ndpr_mask; TYPE_1__ ndpr_prefix; struct ifnet* ndpr_ifp; struct nd_prefix* ndpr_next; } ;
struct ifnet {int dummy; } ;
struct ifaddr {struct ifnet* ifa_ifp; } ;
struct TYPE_4__ {struct nd_prefix* lh_first; } ;


 int FALSE ;
 int IFA_REMREF (struct ifaddr*) ;
 scalar_t__ IN6_ARE_MASKED_ADDR_EQUAL (int *,int *,int *) ;
 scalar_t__ IN6_IS_ADDR_LINKLOCAL (int *) ;
 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int NDPRF_ONLINK ;
 int NDPR_LOCK (struct nd_prefix*) ;
 int NDPR_UNLOCK (struct nd_prefix*) ;
 int SA (struct sockaddr_in6*) ;
 struct ifaddr* ifa_ifwithdstaddr (int ) ;
 scalar_t__ in6_setscope (int *,struct ifnet*,scalar_t__*) ;
 int nd6_mutex ;
 TYPE_2__ nd_prefix ;
 scalar_t__ sa6_recoverscope (struct sockaddr_in6*,int ) ;

__attribute__((used)) static int
nd6_is_new_addr_neighbor(struct sockaddr_in6 *addr, struct ifnet *ifp)
{
 struct nd_prefix *pr;
 struct ifaddr *dstaddr;

 LCK_MTX_ASSERT(nd6_mutex, LCK_MTX_ASSERT_OWNED);





 if (IN6_IS_ADDR_LINKLOCAL(&addr->sin6_addr)) {
  struct sockaddr_in6 sin6_copy;
  u_int32_t zone;





  sin6_copy = *addr;
  if (sa6_recoverscope(&sin6_copy, FALSE))
   return (0);
  if (in6_setscope(&sin6_copy.sin6_addr, ifp, &zone))
   return (0);
  if (sin6_copy.sin6_scope_id == zone)
   return (1);
  else
   return (0);
 }







 for (pr = nd_prefix.lh_first; pr; pr = pr->ndpr_next) {
  NDPR_LOCK(pr);
  if (pr->ndpr_ifp != ifp) {
   NDPR_UNLOCK(pr);
   continue;
  }
  if (!(pr->ndpr_stateflags & NDPRF_ONLINK)) {
   NDPR_UNLOCK(pr);
   continue;
  }
  if (IN6_ARE_MASKED_ADDR_EQUAL(&pr->ndpr_prefix.sin6_addr,
      &addr->sin6_addr, &pr->ndpr_mask)) {
   NDPR_UNLOCK(pr);
   return (1);
  }
  NDPR_UNLOCK(pr);
 }





 dstaddr = ifa_ifwithdstaddr(SA(addr));
 if (dstaddr != ((void*)0)) {
  if (dstaddr->ifa_ifp == ifp) {
   IFA_REMREF(dstaddr);
   return (1);
  }
  IFA_REMREF(dstaddr);
  dstaddr = ((void*)0);
 }

 return (0);
}
