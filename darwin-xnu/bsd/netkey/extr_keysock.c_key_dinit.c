
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protosw {int dummy; } ;
struct domain {int dom_flags; } ;


 int DOM_INITIALIZED ;
 int VERIFY (int) ;
 int key_proto_count ;
 struct domain* keydomain ;
 struct protosw* keysw ;
 int net_add_proto (struct protosw*,struct domain*,int) ;

__attribute__((used)) static void
key_dinit(struct domain *dp)
{
 struct protosw *pr;
 int i;

 VERIFY(!(dp->dom_flags & DOM_INITIALIZED));
 VERIFY(keydomain == ((void*)0));

 keydomain = dp;

 for (i = 0, pr = &keysw[0]; i < key_proto_count; i++, pr++)
  net_add_proto(pr, dp, 1);
}
