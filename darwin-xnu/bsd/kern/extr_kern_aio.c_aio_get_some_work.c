
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;


typedef int thread_continue_t ;
typedef TYPE_1__* aio_workq_t ;
struct TYPE_17__ {int flags; scalar_t__ procp; scalar_t__ uaiocbp; } ;
typedef TYPE_2__ aio_workq_entry ;
struct TYPE_16__ {scalar_t__ aioq_count; int aioq_waitq; int aioq_entries; } ;
struct TYPE_15__ {int aio_inflight_count; TYPE_1__* aio_async_workqs; } ;


 int AIO_FSYNC ;
 int AIO_fsync_delay ;
 int BSDDBG_CODE (int ,int ) ;
 int CAST_EVENT64_T (TYPE_1__*) ;
 int DBG_BSD_AIO ;
 int DBG_FUNC_NONE ;
 int KERNEL_DEBUG (int,int,int,int ,int ,int ) ;
 int OSIncrementAtomic (int *) ;
 TYPE_2__* TAILQ_FIRST (int *) ;
 int THREAD_UNINT ;
 TYPE_12__ aio_anchor ;
 scalar_t__ aio_delay_fsync_request (TYPE_2__*) ;
 int aio_entry_ref (TYPE_2__*) ;
 int aio_proc_lock_spin (scalar_t__) ;
 int aio_proc_unlock (scalar_t__) ;
 scalar_t__ aio_work_thread ;
 int aio_workq_add_entry_locked (TYPE_1__*,TYPE_2__*) ;
 int aio_workq_lock_spin (TYPE_1__*) ;
 int aio_workq_remove_entry_locked (TYPE_1__*,TYPE_2__*) ;
 int aio_workq_unlock (TYPE_1__*) ;
 int thread_block (int ) ;
 int waitq_assert_wait64 (int *,int ,int ,int ) ;

__attribute__((used)) static aio_workq_entry *
aio_get_some_work( void )
{
 aio_workq_entry *entryp = ((void*)0);
 aio_workq_t queue = ((void*)0);


 queue = &aio_anchor.aio_async_workqs[0];
 aio_workq_lock_spin(queue);
 if (queue->aioq_count == 0) {
  goto nowork;
 }







 for(;;) {




  entryp = TAILQ_FIRST(&queue->aioq_entries);





  if (entryp == ((void*)0)) {
   goto nowork;
  }

  aio_workq_remove_entry_locked(queue, entryp);

  aio_workq_unlock(queue);





  if ( (entryp->flags & AIO_FSYNC) != 0 ) {




   aio_proc_lock_spin(entryp->procp);
   if ( aio_delay_fsync_request( entryp ) ) {

    KERNEL_DEBUG( (BSDDBG_CODE(DBG_BSD_AIO, AIO_fsync_delay)) | DBG_FUNC_NONE,
         (int)entryp->procp, (int)entryp->uaiocbp, 0, 0, 0 );

    aio_proc_unlock(entryp->procp);

    aio_workq_lock_spin(queue);
    aio_workq_add_entry_locked(queue, entryp);
    continue;
   }
   aio_proc_unlock(entryp->procp);
  }

  break;
 }

 aio_entry_ref(entryp);

 OSIncrementAtomic(&aio_anchor.aio_inflight_count);
 return( entryp );

nowork:

 waitq_assert_wait64(&queue->aioq_waitq, CAST_EVENT64_T(queue), THREAD_UNINT, 0);
 aio_workq_unlock(queue);
 thread_block( (thread_continue_t)aio_work_thread );


 return ((void*)0);
}
