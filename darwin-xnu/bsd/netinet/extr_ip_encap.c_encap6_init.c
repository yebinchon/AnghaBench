
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protosw {int dummy; } ;
struct ip6protosw {int dummy; } ;
struct domain {int dummy; } ;


 int encap_init (struct protosw*,struct domain*) ;

void
encap6_init(struct ip6protosw *pp, struct domain *dp)
{
 encap_init((struct protosw *)pp, dp);
}
