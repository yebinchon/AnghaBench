
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ip6protosw {int pr_flags; } ;
struct domain {int dummy; } ;


 int PR_ATTACHED ;
 int PR_INITIALIZED ;
 int VERIFY (int) ;
 int mld_init () ;

void
icmp6_init(struct ip6protosw *pp, struct domain *dp)
{
#pragma unused(dp)
 static int icmp6_initialized = 0;


 VERIFY(pp == ((void*)0) ||
     (pp->pr_flags & (PR_INITIALIZED|PR_ATTACHED)) == PR_ATTACHED);


 if (!icmp6_initialized) {
  icmp6_initialized = 1;
  mld_init();
 }
}
