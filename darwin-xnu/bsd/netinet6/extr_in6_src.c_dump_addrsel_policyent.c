
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct walkarg {int w_req; } ;
struct in6_addrpolicy {int dummy; } ;


 int SYSCTL_OUT (int ,struct in6_addrpolicy const*,int) ;

__attribute__((used)) static int
dump_addrsel_policyent(const struct in6_addrpolicy *pol, void *arg)
{
 int error = 0;
 struct walkarg *w = arg;

 error = SYSCTL_OUT(w->w_req, pol, sizeof (*pol));

 return (error);
}
