
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* thread_t ;
struct TYPE_3__ {scalar_t__ promotions; int sched_flags; } ;


 int TH_SFLAG_PROMOTED ;
 int assert (int) ;

void
assert_promotions_invariant(thread_t thread)
{
 if (thread->promotions > 0)
  assert((thread->sched_flags & TH_SFLAG_PROMOTED) == TH_SFLAG_PROMOTED);

 if (thread->promotions == 0)
  assert((thread->sched_flags & TH_SFLAG_PROMOTED) != TH_SFLAG_PROMOTED);
}
