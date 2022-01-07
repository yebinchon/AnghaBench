
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ifnet_demux_desc {int dummy; } ;
struct ifnet {int dummy; } ;
typedef int protocol_family_t ;
typedef int errno_t ;



__attribute__((used)) static errno_t
pflogaddproto(struct ifnet *ifp, protocol_family_t pf,
    const struct ifnet_demux_desc *d, u_int32_t cnt)
{
#pragma unused(ifp, pf, d, cnt)
 return (0);
}
