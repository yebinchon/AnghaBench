
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct domain_old {int * dom_mtx; int * dom_next; } ;
struct domain {int dom_flags; struct domain_old* dom_old; } ;


 int DOM_ATTACHED ;
 int DOM_OLD ;
 int TAILQ_REMOVE (int *,struct domain*,int ) ;
 int VERIFY (int) ;
 int dom_entry ;
 int domain_proto_mtx_lock_assert_held () ;
 int domains ;

__attribute__((used)) static void
detach_domain(struct domain *dp)
{
 domain_proto_mtx_lock_assert_held();
 VERIFY(dp->dom_flags & DOM_ATTACHED);

 TAILQ_REMOVE(&domains, dp, dom_entry);
 dp->dom_flags &= ~DOM_ATTACHED;

 if (dp->dom_flags & DOM_OLD) {
  struct domain_old *odp = dp->dom_old;

  VERIFY(odp != ((void*)0));
  odp->dom_next = ((void*)0);
  odp->dom_mtx = ((void*)0);
 }
}
