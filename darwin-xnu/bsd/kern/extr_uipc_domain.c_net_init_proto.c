
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protosw {int pr_flags; } ;
struct domain {int dummy; } ;


 int PR_ATTACHED ;
 int VERIFY (int) ;
 int domain_proto_mtx_lock_assert_held () ;
 int init_proto (struct protosw*,struct domain*) ;

void
net_init_proto(struct protosw *pp, struct domain *dp)
{





 domain_proto_mtx_lock_assert_held();
 VERIFY(pp->pr_flags & PR_ATTACHED);

 init_proto(pp, dp);
}
