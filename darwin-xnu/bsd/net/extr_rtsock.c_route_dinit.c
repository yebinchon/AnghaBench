
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protosw {int dummy; } ;
struct domain {int dom_flags; } ;


 int DOM_INITIALIZED ;
 int VERIFY (int) ;
 int net_add_proto (struct protosw*,struct domain*,int) ;
 int route_init () ;
 int route_proto_count ;
 struct domain* routedomain ;
 struct protosw* routesw ;

__attribute__((used)) static void
route_dinit(struct domain *dp)
{
 struct protosw *pr;
 int i;

 VERIFY(!(dp->dom_flags & DOM_INITIALIZED));
 VERIFY(routedomain == ((void*)0));

 routedomain = dp;

 for (i = 0, pr = &routesw[0]; i < route_proto_count; i++, pr++)
  net_add_proto(pr, dp, 1);

 route_init();
}
