
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protosw {int pr_flags; } ;
struct domain {int dummy; } ;


 int LIST_INIT (int *) ;
 int PR_ATTACHED ;
 int PR_INITIALIZED ;
 int VERIFY (int) ;
 int encaptab ;

__attribute__((used)) static void
encap_init(struct protosw *pp, struct domain *dp)
{
#pragma unused(dp)
 static int encap_initialized = 0;

 VERIFY((pp->pr_flags & (PR_INITIALIZED|PR_ATTACHED)) == PR_ATTACHED);


 if (encap_initialized)
  return;
 encap_initialized = 1;
}
