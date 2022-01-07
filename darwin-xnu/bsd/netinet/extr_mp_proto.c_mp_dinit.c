
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct domain {int dom_flags; } ;


 int DOM_INITIALIZED ;
 int VERIFY (int) ;
 int mpsw ;
 int net_add_proto (int *,struct domain*,int) ;

void
mp_dinit(struct domain *dp)
{
 VERIFY(!(dp->dom_flags & DOM_INITIALIZED));

 net_add_proto(&mpsw, dp, 1);
}
