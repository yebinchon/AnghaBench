
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
typedef int aio_workq_entry ;
struct TYPE_5__ {int aio_done_count; } ;
struct TYPE_4__ {int p_aio_total_count; int p_aio_doneq; } ;


 int OSDecrementAtomic (int *) ;
 int TAILQ_REMOVE (int *,int *,int ) ;
 TYPE_3__ aio_anchor ;
 int aio_decrement_total_count () ;
 int aio_proc_link ;

__attribute__((used)) static void
aio_proc_remove_done_locked(proc_t procp, aio_workq_entry *entryp)
{
 TAILQ_REMOVE(&procp->p_aio_doneq, entryp, aio_proc_link);
 OSDecrementAtomic(&aio_anchor.aio_done_count);
 aio_decrement_total_count();
 procp->p_aio_total_count--;
}
