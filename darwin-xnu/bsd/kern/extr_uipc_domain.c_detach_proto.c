
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protosw {int pr_flags; struct protosw* pr_protosw; struct domain* pr_domain; } ;
struct domain {int dom_protosw; } ;


 int PR_ATTACHED ;
 int TAILQ_REMOVE (int *,struct protosw*,int ) ;
 int VERIFY (int) ;
 int domain_proto_mtx_lock_assert_held () ;
 int pr_entry ;

__attribute__((used)) static void
detach_proto(struct protosw *pp, struct domain *dp)
{
 domain_proto_mtx_lock_assert_held();
 VERIFY(pp->pr_flags & PR_ATTACHED);
 VERIFY(pp->pr_domain == dp);
 VERIFY(pp->pr_protosw == pp);

 TAILQ_REMOVE(&dp->dom_protosw, pp, pr_entry);
 pp->pr_flags &= ~PR_ATTACHED;
 pp->pr_domain = ((void*)0);
 pp->pr_protosw = ((void*)0);
}
