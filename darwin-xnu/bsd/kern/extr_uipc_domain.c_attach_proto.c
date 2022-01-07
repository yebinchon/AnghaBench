
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protosw {int pr_flags; int pr_usrreqs; struct protosw* pr_protosw; struct domain* pr_domain; } ;
struct domain {int dom_protosw; } ;


 int PR_ATTACHED ;
 int TAILQ_INSERT_TAIL (int *,struct protosw*,int ) ;
 int VERIFY (int) ;
 int domain_proto_mtx_lock_assert_held () ;
 int pr_entry ;
 int pru_sanitize (int ) ;

__attribute__((used)) static void
attach_proto(struct protosw *pp, struct domain *dp)
{
 domain_proto_mtx_lock_assert_held();
 VERIFY(!(pp->pr_flags & PR_ATTACHED));
 VERIFY(pp->pr_domain == ((void*)0));
 VERIFY(pp->pr_protosw == ((void*)0));

 TAILQ_INSERT_TAIL(&dp->dom_protosw, pp, pr_entry);
 pp->pr_flags |= PR_ATTACHED;
 pp->pr_domain = dp;
 pp->pr_protosw = pp;


 pru_sanitize(pp->pr_usrreqs);
}
