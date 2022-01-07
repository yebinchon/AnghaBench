
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct domain {int dom_flags; } ;


 int DOM_ATTACHED ;
 int TAILQ_INSERT_TAIL (int *,struct domain*,int ) ;
 int VERIFY (int) ;
 int dom_entry ;
 int domain_proto_mtx_lock_assert_held () ;
 int domains ;

__attribute__((used)) static void
attach_domain(struct domain *dp)
{
 domain_proto_mtx_lock_assert_held();
 VERIFY(!(dp->dom_flags & DOM_ATTACHED));

 TAILQ_INSERT_TAIL(&domains, dp, dom_entry);
 dp->dom_flags |= DOM_ATTACHED;
}
