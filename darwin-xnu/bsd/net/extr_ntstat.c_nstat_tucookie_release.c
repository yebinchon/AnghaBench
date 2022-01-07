
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nstat_tucookie {int dummy; } ;


 int nstat_tucookie_release_internal (struct nstat_tucookie*,int) ;

__attribute__((used)) static void
nstat_tucookie_release(
    struct nstat_tucookie *cookie)
{
 nstat_tucookie_release_internal(cookie, 0);
}
