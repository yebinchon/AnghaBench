
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ifnet {int dummy; } ;
typedef int ifnet_ctl_cmd_t ;
typedef int errno_t ;


 int EOPNOTSUPP ;

__attribute__((used)) static errno_t
ifp_if_ctl(struct ifnet *ifp, ifnet_ctl_cmd_t cmd, u_int32_t arglen, void *arg)
{
#pragma unused(ifp, cmd, arglen, arg)
 return (EOPNOTSUPP);
}
