
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct radix_node_head {int (* rnh_walktree ) (struct radix_node_head*,int ,struct in_ifadown_arg*) ;} ;
struct in_ifadown_arg {int del; struct ifaddr* ifa; struct radix_node_head* rnh; } ;
struct ifaddr {int ifa_flags; TYPE_1__* ifa_addr; } ;
struct TYPE_2__ {size_t sa_family; } ;


 size_t AF_INET ;
 int IFA_LOCK_SPIN (struct ifaddr*) ;
 int IFA_ROUTE ;
 int IFA_UNLOCK (struct ifaddr*) ;
 int LCK_MTX_ASSERT (int ,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int in_ifadownkill ;
 int rnh_lock ;
 int routegenid_inet_update () ;
 struct radix_node_head** rt_tables ;
 int stub1 (struct radix_node_head*,int ,struct in_ifadown_arg*) ;

int
in_ifadown(struct ifaddr *ifa, int delete)
{
 struct in_ifadown_arg arg;
 struct radix_node_head *rnh;

 LCK_MTX_ASSERT(rnh_lock, LCK_MTX_ASSERT_OWNED);






 if (ifa->ifa_addr->sa_family != AF_INET)
  return (1);


 routegenid_inet_update();

 arg.rnh = rnh = rt_tables[AF_INET];
 arg.ifa = ifa;
 arg.del = delete;
 rnh->rnh_walktree(rnh, in_ifadownkill, &arg);
 IFA_LOCK_SPIN(ifa);
 ifa->ifa_flags &= ~IFA_ROUTE;
 IFA_UNLOCK(ifa);
 return (0);
}
