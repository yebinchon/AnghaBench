
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* aio_workq_t ;
struct TYPE_3__ {int aioq_waitq; int aioq_mtx; scalar_t__ aioq_count; int aioq_entries; } ;


 int SYNC_POLICY_FIFO ;
 int TAILQ_INIT (int *) ;
 int aio_lock_attr ;
 int aio_queue_lock_grp ;
 int lck_mtx_init (int *,int ,int ) ;
 int waitq_init (int *,int ) ;

__attribute__((used)) static void
aio_workq_init(aio_workq_t wq)
{
 TAILQ_INIT(&wq->aioq_entries);
 wq->aioq_count = 0;
 lck_mtx_init(&wq->aioq_mtx, aio_queue_lock_grp, aio_lock_attr);
 waitq_init(&wq->aioq_waitq, SYNC_POLICY_FIFO);
}
