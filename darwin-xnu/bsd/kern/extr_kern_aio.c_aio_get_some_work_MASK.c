#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_12__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  thread_continue_t ;
typedef  TYPE_1__* aio_workq_t ;
struct TYPE_17__ {int flags; scalar_t__ procp; scalar_t__ uaiocbp; } ;
typedef  TYPE_2__ aio_workq_entry ;
struct TYPE_16__ {scalar_t__ aioq_count; int /*<<< orphan*/  aioq_waitq; int /*<<< orphan*/  aioq_entries; } ;
struct TYPE_15__ {int /*<<< orphan*/  aio_inflight_count; TYPE_1__* aio_async_workqs; } ;

/* Variables and functions */
 int AIO_FSYNC ; 
 int /*<<< orphan*/  AIO_fsync_delay ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  DBG_BSD_AIO ; 
 int DBG_FUNC_NONE ; 
 int /*<<< orphan*/  FUNC2 (int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  THREAD_UNINT ; 
 TYPE_12__ aio_anchor ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ aio_work_thread ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static aio_workq_entry *
FUNC15( void )
{
	aio_workq_entry		 		*entryp = NULL;
	aio_workq_t 				queue = NULL;

	/* Just one queue for the moment.  In the future there will be many. */
	queue = &aio_anchor.aio_async_workqs[0];	
	FUNC10(queue);
	if (queue->aioq_count == 0) {
		goto nowork;
	}

	/* 
	 * Hold the queue lock.
	 *
	 * pop some work off the work queue and add to our active queue
	 * Always start with the queue lock held. 
	 */
	for(;;) {
		/* 
		 * Pull of of work queue.  Once it's off, it can't be cancelled,
		 * so we can take our ref once we drop the queue lock.
		 */
		entryp = FUNC4(&queue->aioq_entries);

		/* 
		 * If there's no work or only fsyncs that need delay, go to sleep 
		 * and then start anew from aio_work_thread 
		 */
		if (entryp == NULL) {
			goto nowork;
		}

		FUNC11(queue, entryp);
		
		FUNC12(queue);

		/* 
		 * Check if it's an fsync that must be delayed.  No need to lock the entry;
		 * that flag would have been set at initialization.
		 */
		if ( (entryp->flags & AIO_FSYNC) != 0 ) {
			/* 
			 * Check for unfinished operations on the same file
			 * in this proc's queue.
			 */
			FUNC7(entryp->procp);
			if ( FUNC5( entryp ) ) {
				/* It needs to be delayed.  Put it back on the end of the work queue */
				FUNC2( (FUNC0(DBG_BSD_AIO, AIO_fsync_delay)) | DBG_FUNC_NONE,
							  (int)entryp->procp, (int)entryp->uaiocbp, 0, 0, 0 );

				FUNC8(entryp->procp);

				FUNC10(queue);
				FUNC9(queue, entryp);
				continue;
			} 
			FUNC8(entryp->procp);
		}
		
		break;
	}

	FUNC6(entryp);

	FUNC3(&aio_anchor.aio_inflight_count);
	return( entryp );

nowork:
	/* We will wake up when someone enqueues something */
	FUNC14(&queue->aioq_waitq, FUNC1(queue), THREAD_UNINT, 0);
	FUNC12(queue);
	FUNC13( (thread_continue_t)aio_work_thread );

	// notreached
	return NULL;
}