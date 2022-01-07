
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct rtentry {int rt_flags; TYPE_1__* rt_gateway; } ;
struct radix_node {int dummy; } ;
struct in6_addr {int dummy; } ;
struct TYPE_5__ {int sin6_addr; } ;
struct TYPE_4__ {scalar_t__ sa_family; } ;


 scalar_t__ AF_INET6 ;
 int IN6_ARE_ADDR_EQUAL (struct in6_addr*,int *) ;
 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int RTF_HOST ;
 int RTF_STATIC ;
 int RTM_DELETE ;
 int RT_LOCK (struct rtentry*) ;
 int RT_UNLOCK (struct rtentry*) ;
 TYPE_2__* SIN6 (TYPE_1__*) ;
 int rnh_lock ;
 int rt_key (struct rtentry*) ;
 int rt_mask (struct rtentry*) ;
 int rtrequest_locked (int ,int ,TYPE_1__*,int ,int,int ) ;

__attribute__((used)) static int
rt6_deleteroute(
 struct radix_node *rn,
 void *arg)
{
 struct rtentry *rt = (struct rtentry *)rn;
 struct in6_addr *gate = (struct in6_addr *)arg;

 LCK_MTX_ASSERT(rnh_lock, LCK_MTX_ASSERT_OWNED);

 RT_LOCK(rt);
 if (rt->rt_gateway == ((void*)0) || rt->rt_gateway->sa_family != AF_INET6) {
  RT_UNLOCK(rt);
  return (0);
 }

 if (!IN6_ARE_ADDR_EQUAL(gate, &SIN6(rt->rt_gateway)->sin6_addr)) {
  RT_UNLOCK(rt);
  return (0);
 }





 if ((rt->rt_flags & RTF_STATIC) != 0) {
  RT_UNLOCK(rt);
  return (0);
 }




 if ((rt->rt_flags & RTF_HOST) == 0) {
  RT_UNLOCK(rt);
  return (0);
 }






 RT_UNLOCK(rt);
 return (rtrequest_locked(RTM_DELETE, rt_key(rt), rt->rt_gateway,
     rt_mask(rt), rt->rt_flags, 0));
}
