
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* aio_workq_t ;
typedef int aio_workq_entry ;
struct TYPE_4__ {scalar_t__ aioq_count; int aioq_entries; } ;


 int ASSERT_AIO_WORKQ_LOCK_OWNED (TYPE_1__*) ;
 int TAILQ_INSERT_TAIL (int *,int *,int ) ;
 int aio_workq_link ;
 int panic (char*) ;

__attribute__((used)) static void
aio_workq_add_entry_locked(aio_workq_t queue, aio_workq_entry *entryp)
{
 ASSERT_AIO_WORKQ_LOCK_OWNED(queue);

 TAILQ_INSERT_TAIL(&queue->aioq_entries, entryp, aio_workq_link);
 if (queue->aioq_count < 0) {
  panic("Negative count on a queue.\n");
 }
 queue->aioq_count++;
}
