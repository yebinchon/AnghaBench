
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtentry {struct ifaddr* rt_ifa; } ;
struct ifaddr {int dummy; } ;


 int IFA_ADDREF (struct ifaddr*) ;
 int IFA_REMREF (struct ifaddr*) ;
 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int RT_CONVERT_LOCK (struct rtentry*) ;
 int RT_LOCK_ASSERT_HELD (struct rtentry*) ;
 int rnh_lock ;

void
rtsetifa(struct rtentry *rt, struct ifaddr *ifa)
{
 LCK_MTX_ASSERT(rnh_lock, LCK_MTX_ASSERT_OWNED);

 RT_LOCK_ASSERT_HELD(rt);

 if (rt->rt_ifa == ifa)
  return;


 RT_CONVERT_LOCK(rt);


 if (rt->rt_ifa)
  IFA_REMREF(rt->rt_ifa);


 rt->rt_ifa = ifa;


 if (rt->rt_ifa)
  IFA_ADDREF(rt->rt_ifa);
}
