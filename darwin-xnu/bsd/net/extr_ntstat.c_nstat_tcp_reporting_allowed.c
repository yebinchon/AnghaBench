
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nstat_provider_filter ;
typedef int nstat_provider_cookie_t ;


 int FALSE ;
 int nstat_tcpudp_reporting_allowed (int ,int *,int ) ;

__attribute__((used)) static bool
nstat_tcp_reporting_allowed(nstat_provider_cookie_t cookie, nstat_provider_filter *filter)
{
 return nstat_tcpudp_reporting_allowed(cookie, filter, FALSE);
}
