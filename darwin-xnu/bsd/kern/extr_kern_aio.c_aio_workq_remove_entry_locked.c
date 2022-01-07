
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_2__* aio_workq_t ;
struct TYPE_8__ {int * tqe_prev; } ;
struct TYPE_10__ {TYPE_1__ aio_workq_link; } ;
typedef TYPE_3__ aio_workq_entry ;
struct TYPE_9__ {scalar_t__ aioq_count; int aioq_entries; } ;


 int ASSERT_AIO_WORKQ_LOCK_OWNED (TYPE_2__*) ;
 int TAILQ_REMOVE (int *,TYPE_3__*,int ) ;
 int aio_workq_link ;
 int panic (char*) ;

__attribute__((used)) static void
aio_workq_remove_entry_locked(aio_workq_t queue, aio_workq_entry *entryp)
{
 ASSERT_AIO_WORKQ_LOCK_OWNED(queue);

 if (entryp->aio_workq_link.tqe_prev == ((void*)0)) {
  panic("Trying to remove an entry from a work queue, but it is not on a queue\n");
 }

 TAILQ_REMOVE(&queue->aioq_entries, entryp, aio_workq_link);
 queue->aioq_count--;
 entryp->aio_workq_link.tqe_prev = ((void*)0);

 if (queue->aioq_count < 0) {
  panic("Negative count on a queue.\n");
 }
}
