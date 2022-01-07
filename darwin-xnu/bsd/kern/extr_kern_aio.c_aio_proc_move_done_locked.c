
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* proc_t ;
typedef int aio_workq_entry ;
struct TYPE_6__ {int aio_done_count; } ;
struct TYPE_5__ {int p_aio_active_count; int p_aio_doneq; int p_aio_activeq; } ;


 int ASSERT_AIO_PROC_LOCK_OWNED (TYPE_1__*) ;
 int OSIncrementAtomic (int *) ;
 int TAILQ_INSERT_TAIL (int *,int *,int ) ;
 int TAILQ_REMOVE (int *,int *,int ) ;
 TYPE_3__ aio_anchor ;
 int aio_proc_link ;

__attribute__((used)) static void
aio_proc_move_done_locked(proc_t procp, aio_workq_entry *entryp)
{
 ASSERT_AIO_PROC_LOCK_OWNED(procp);

 TAILQ_REMOVE(&procp->p_aio_activeq, entryp, aio_proc_link );
 TAILQ_INSERT_TAIL( &procp->p_aio_doneq, entryp, aio_proc_link);
 procp->p_aio_active_count--;
 OSIncrementAtomic(&aio_anchor.aio_done_count);
}
