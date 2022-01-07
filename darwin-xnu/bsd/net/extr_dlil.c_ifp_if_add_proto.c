
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ifnet_demux_desc {int dummy; } ;
struct ifnet {int dummy; } ;
typedef int protocol_family_t ;
typedef int errno_t ;


 int EINVAL ;

__attribute__((used)) static errno_t
ifp_if_add_proto(struct ifnet *ifp, protocol_family_t pf,
    const struct ifnet_demux_desc *da, u_int32_t dc)
{
#pragma unused(ifp, pf, da, dc)
 return (EINVAL);
}
