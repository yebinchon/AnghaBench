
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int nstat_provider_cookie_t ;
typedef int errno_t ;


 int nstat_tcpudp_lookup (int *,void const*,int ,int *) ;
 int tcbinfo ;

__attribute__((used)) static errno_t
nstat_tcp_lookup(
 const void *data,
 u_int32_t length,
 nstat_provider_cookie_t *out_cookie)
{
 return nstat_tcpudp_lookup(&tcbinfo, data, length, out_cookie);
}
