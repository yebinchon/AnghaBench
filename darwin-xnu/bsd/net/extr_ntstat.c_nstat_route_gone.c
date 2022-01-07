
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtentry {int rt_flags; } ;
typedef scalar_t__ nstat_provider_cookie_t ;


 int RTF_UP ;

__attribute__((used)) static int
nstat_route_gone(
 nstat_provider_cookie_t cookie)
{
 struct rtentry *rt = (struct rtentry*)cookie;
 return ((rt->rt_flags & RTF_UP) == 0) ? 1 : 0;
}
