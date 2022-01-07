
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
struct socket {int dummy; } ;
struct ifnet {scalar_t__ if_rt_sendts; } ;


 int TCP_BG_SWITCH_TIME ;
 int net_io_policy_throttle_best_effort ;
 scalar_t__ net_uptime () ;
 scalar_t__ soissrcbesteffort (struct socket*) ;

__attribute__((used)) static inline int
so_throttle_best_effort(struct socket *so, struct ifnet *ifp)
{
 u_int32_t uptime = net_uptime();
 return (soissrcbesteffort(so) &&
     net_io_policy_throttle_best_effort == 1 &&
     ifp->if_rt_sendts > 0 &&
     (int)(uptime - ifp->if_rt_sendts) <= TCP_BG_SWITCH_TIME);
}
