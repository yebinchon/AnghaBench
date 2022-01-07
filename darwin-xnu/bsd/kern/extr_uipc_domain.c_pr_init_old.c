
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct protosw {int pr_flags; TYPE_1__* pr_old; } ;
struct domain {int dummy; } ;
struct TYPE_2__ {int (* pr_init ) () ;} ;


 int PR_OLD ;
 int VERIFY (int) ;
 int stub1 () ;

__attribute__((used)) static void
pr_init_old(struct protosw *pp, struct domain *dp)
{
#pragma unused(dp)
 VERIFY(pp->pr_flags & PR_OLD);
 VERIFY(pp->pr_old != ((void*)0));

 if (pp->pr_old->pr_init != ((void*)0))
  pp->pr_old->pr_init();
}
