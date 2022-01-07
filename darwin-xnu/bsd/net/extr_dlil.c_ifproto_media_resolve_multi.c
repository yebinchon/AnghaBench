
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_dl {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int ifnet_t ;
typedef int errno_t ;


 int ENXIO ;

__attribute__((used)) static errno_t
ifproto_media_resolve_multi(ifnet_t ifp, const struct sockaddr *proto_addr,
    struct sockaddr_dl *out_ll, size_t ll_len)
{
#pragma unused(ifp, proto_addr, out_ll, ll_len)
 return (ENXIO);
}
