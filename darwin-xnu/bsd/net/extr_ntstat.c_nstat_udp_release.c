
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nstat_tucookie {int dummy; } ;
typedef scalar_t__ nstat_provider_cookie_t ;


 int nstat_tucookie_release_internal (struct nstat_tucookie*,int) ;

__attribute__((used)) static void
nstat_udp_release(
 nstat_provider_cookie_t cookie,
 int locked)
{
 struct nstat_tucookie *tucookie =
     (struct nstat_tucookie *)cookie;

 nstat_tucookie_release_internal(tucookie, locked);
}
