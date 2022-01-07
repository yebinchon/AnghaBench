
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protosw {int dummy; } ;
struct domain {int dom_flags; } ;


 int DOM_INITIALIZED ;
 int VERIFY (int) ;
 int ndrv_proto_count ;
 struct domain* ndrvdomain ;
 struct protosw* ndrvsw ;
 int net_add_proto (struct protosw*,struct domain*,int) ;

__attribute__((used)) static void
ndrv_dominit(struct domain *dp)
{
 struct protosw *pr;
 int i;

 VERIFY(!(dp->dom_flags & DOM_INITIALIZED));
 VERIFY(ndrvdomain == ((void*)0));

 ndrvdomain = dp;

 for (i = 0, pr = &ndrvsw[0]; i < ndrv_proto_count; i++, pr++)
  net_add_proto(pr, dp, 1);
}
