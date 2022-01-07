
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct protosw {int pr_flags; int (* pr_init ) (struct protosw*,struct domain*) ;int pr_filter_head; } ;
struct domain {int dummy; } ;


 int PR_ATTACHED ;
 int PR_INITIALIZED ;
 int TAILQ_INIT (int *) ;
 int VERIFY (int) ;
 int stub1 (struct protosw*,struct domain*) ;

__attribute__((used)) static void
init_proto(struct protosw *pp, struct domain *dp)
{
 VERIFY(pp->pr_flags & PR_ATTACHED);

 if (!(pp->pr_flags & PR_INITIALIZED)) {
  TAILQ_INIT(&pp->pr_filter_head);
  if (pp->pr_init != ((void*)0))
   pp->pr_init(pp, dp);
  pp->pr_flags |= PR_INITIALIZED;
 }
}
