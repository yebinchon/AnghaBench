
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef TYPE_3__* caddr_t ;
typedef scalar_t__ boolean_t ;
struct TYPE_15__ {scalar_t__ sigev_notify; int sigev_signo; } ;
struct TYPE_16__ {int aio_fildes; TYPE_1__ aio_sigevent; } ;
struct TYPE_18__ {int flags; scalar_t__ uaiocbp; TYPE_8__* procp; TYPE_2__ aiocb; scalar_t__ group_tag; } ;
typedef TYPE_4__ aio_workq_entry ;
struct TYPE_17__ {scalar_t__ io_completed; scalar_t__ io_issued; int io_waiter; } ;
typedef TYPE_3__ aio_lio_context ;
struct TYPE_19__ {int AIO_SUSPEND_SLEEP_CHAN; TYPE_3__ AIO_CLEANUP_SLEEP_CHAN; } ;


 int AIO_CLOSE_WAIT ;
 int AIO_DISABLE ;
 int AIO_EXIT_WAIT ;
 int AIO_LIO_NOTIFY ;
 int AIO_completion_cleanup_wait ;
 int AIO_completion_cleanup_wake ;
 int AIO_completion_sig ;
 int AIO_completion_suspend_wake ;
 int BSDDBG_CODE (int ,int ) ;
 int DBG_BSD_AIO ;
 int DBG_FUNC_NONE ;
 scalar_t__ FALSE ;
 int KERNEL_DEBUG (int,int,int,int ,int ,int ) ;
 scalar_t__ SIGEV_SIGNAL ;
 scalar_t__ TRUE ;
 int aio_active_requests_for_process (TYPE_8__*) ;
 int aio_proc_active_requests_for_file (TYPE_8__*,int ) ;
 int aio_proc_lock_spin (TYPE_8__*) ;
 int aio_proc_unlock (TYPE_8__*) ;
 int free_lio_context (TYPE_3__*) ;
 int panic (char*) ;
 int psignal (TYPE_8__*,int ) ;
 int wakeup (TYPE_3__*) ;
 int wakeup_one (TYPE_3__*) ;

__attribute__((used)) static void
do_aio_completion( aio_workq_entry *entryp )
{

 boolean_t lastLioCompleted = FALSE;
 aio_lio_context *lio_context = ((void*)0);
 int waiter = 0;

 lio_context = (aio_lio_context *)entryp->group_tag;

 if (lio_context != ((void*)0)) {

  aio_proc_lock_spin(entryp->procp);


   lio_context->io_completed++;


   if (lio_context->io_issued == lio_context->io_completed) {
    lastLioCompleted = TRUE;
   }

  waiter = lio_context->io_waiter;


  if ((entryp->flags & AIO_LIO_NOTIFY) && (lastLioCompleted) && (waiter != 0)) {

   wakeup(lio_context);
  }

  aio_proc_unlock(entryp->procp);
 }

 if ( entryp->aiocb.aio_sigevent.sigev_notify == SIGEV_SIGNAL &&
   (entryp->flags & AIO_DISABLE) == 0 ) {

  boolean_t performSignal = FALSE;
   if (lio_context == ((void*)0)) {
    performSignal = TRUE;
   }
   else {




   performSignal = lastLioCompleted;
   }

   if (performSignal) {

   KERNEL_DEBUG( (BSDDBG_CODE(DBG_BSD_AIO, AIO_completion_sig)) | DBG_FUNC_NONE,
     (int)entryp->procp, (int)entryp->uaiocbp,
     entryp->aiocb.aio_sigevent.sigev_signo, 0, 0 );

   psignal( entryp->procp, entryp->aiocb.aio_sigevent.sigev_signo );
  }
 }

 if ((entryp->flags & AIO_EXIT_WAIT) && (entryp->flags & AIO_CLOSE_WAIT)) {
  panic("Close and exit flags set at the same time\n");
 }
 if ( (entryp->flags & AIO_EXIT_WAIT) != 0 ) {
  int active_requests;

  KERNEL_DEBUG( (BSDDBG_CODE(DBG_BSD_AIO, AIO_completion_cleanup_wait)) | DBG_FUNC_NONE,
       (int)entryp->procp, (int)entryp->uaiocbp, 0, 0, 0 );

  aio_proc_lock_spin(entryp->procp);
  active_requests = aio_active_requests_for_process( entryp->procp );
  if ( active_requests < 1 ) {




   wakeup_one((caddr_t)&entryp->procp->AIO_CLEANUP_SLEEP_CHAN);
   aio_proc_unlock(entryp->procp);

   KERNEL_DEBUG( (BSDDBG_CODE(DBG_BSD_AIO, AIO_completion_cleanup_wake)) | DBG_FUNC_NONE,
          (int)entryp->procp, (int)entryp->uaiocbp, 0, 0, 0 );
  } else {
   aio_proc_unlock(entryp->procp);
  }
 }

 if ( (entryp->flags & AIO_CLOSE_WAIT) != 0 ) {
  int active_requests;

  KERNEL_DEBUG( (BSDDBG_CODE(DBG_BSD_AIO, AIO_completion_cleanup_wait)) | DBG_FUNC_NONE,
       (int)entryp->procp, (int)entryp->uaiocbp, 0, 0, 0 );

  aio_proc_lock_spin(entryp->procp);
  active_requests = aio_proc_active_requests_for_file( entryp->procp, entryp->aiocb.aio_fildes);
  if ( active_requests < 1 ) {

   wakeup(&entryp->procp->AIO_CLEANUP_SLEEP_CHAN);
   aio_proc_unlock(entryp->procp);

   KERNEL_DEBUG( (BSDDBG_CODE(DBG_BSD_AIO, AIO_completion_cleanup_wake)) | DBG_FUNC_NONE,
          (int)entryp->procp, (int)entryp->uaiocbp, 0, 0, 0 );
  } else {
   aio_proc_unlock(entryp->procp);
  }
 }







 wakeup( (caddr_t) &entryp->procp->AIO_SUSPEND_SLEEP_CHAN );
 KERNEL_DEBUG( (BSDDBG_CODE(DBG_BSD_AIO, AIO_completion_suspend_wake)) | DBG_FUNC_NONE,
      (int)entryp->procp, (int)entryp->uaiocbp, 0, 0, 0 );





 if (lastLioCompleted && (waiter == 0))
  free_lio_context (lio_context);


}
