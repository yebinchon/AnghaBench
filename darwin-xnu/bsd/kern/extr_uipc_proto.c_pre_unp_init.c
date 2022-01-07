
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protosw {int dummy; } ;
struct domain {int dom_flags; } ;


 int DOM_INITIALIZED ;
 int VERIFY (int) ;
 int local_proto_count ;
 struct domain* localdomain ;
 struct protosw* localsw ;
 int net_add_proto (struct protosw*,struct domain*,int) ;
 int unp_init () ;

__attribute__((used)) static void
pre_unp_init(struct domain *dp)
{
 struct protosw *pr;
 int i;

 VERIFY(!(dp->dom_flags & DOM_INITIALIZED));
 VERIFY(localdomain == ((void*)0));

 localdomain = dp;

 for (i = 0, pr = &localsw[0]; i < local_proto_count; i++, pr++)
  net_add_proto(pr, dp, 1);

 unp_init();
}
