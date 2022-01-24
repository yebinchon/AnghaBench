#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ user_addr_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
typedef  TYPE_2__* proc_t ;
struct TYPE_14__ {int aio_fildes; int /*<<< orphan*/  aio_nbytes; int /*<<< orphan*/  aio_offset; } ;
struct TYPE_16__ {int flags; TYPE_1__ aiocb; int /*<<< orphan*/  uaiocbp; int /*<<< orphan*/  procp; } ;
typedef  TYPE_3__ aio_workq_entry ;
struct TYPE_15__ {int p_aio_total_count; } ;

/* Variables and functions */
 int /*<<< orphan*/  AIO_work_queued ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DBG_BSD_AIO ; 
 int DBG_FUNC_END ; 
 int DBG_FUNC_START ; 
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ TRUE ; 
 TYPE_3__* FUNC2 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 int FUNC7 () ; 
 int aio_max_requests ; 
 scalar_t__ aio_max_requests_per_process ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (char*,int) ; 

__attribute__((used)) static int
FUNC14(proc_t procp, user_addr_t aiocbp, int kindOfIO )
{
	aio_workq_entry	*entryp;
	int		 result;
	int		 old_count;
    uint32_t *paio_offset;
    uint32_t *paio_nbytes;
    
	old_count = FUNC7();
	if (old_count >= aio_max_requests) {
		result = EAGAIN;
		goto error_noalloc;
	}

	entryp = FUNC2( procp, aiocbp, 0, kindOfIO);
	if ( entryp == NULL ) {
		result = EAGAIN;
		goto error_noalloc;
	}


	FUNC8(procp);

	if ( FUNC11( entryp->procp, entryp->uaiocbp ) == TRUE ) {
		result = EAGAIN; 
		goto error_exit;
	}

	/* check our aio limits to throttle bad or rude user land behavior */
	if (FUNC6( procp ) >= aio_max_requests_per_process) {
		FUNC13("aio_queue_async_request(): too many in flight for proc: %d.\n", procp->p_aio_total_count);
		result = EAGAIN; 
		goto error_exit;
	}
	
	/* Add the IO to proc and work queues, wake up threads as appropriate */
	FUNC12(FUNC9(procp));
	FUNC4(procp, entryp, 1);
	
	FUNC10(procp);
    
    paio_offset = (uint32_t*) &entryp->aiocb.aio_offset;
    paio_nbytes = (uint32_t*) &entryp->aiocb.aio_nbytes;
    FUNC1( (FUNC0(DBG_BSD_AIO, AIO_work_queued)) | DBG_FUNC_START,
                 (int)procp, (int)aiocbp, entryp->flags, entryp->aiocb.aio_fildes, 0 );
    FUNC1( (FUNC0(DBG_BSD_AIO, AIO_work_queued)) | DBG_FUNC_END,
                          paio_offset[0], (sizeof(entryp->aiocb.aio_offset) == sizeof(uint64_t) ? paio_offset[1] : 0),
                          paio_nbytes[0], (sizeof(entryp->aiocb.aio_nbytes) == sizeof(uint64_t) ? paio_nbytes[1] : 0),
                          0 );
    
	return( 0 );
	
error_exit:
	/*
	 * This entry has not been queued up so no worries about
	 * unlocked state and aio_map
	 */
	FUNC10(procp);
	FUNC5(entryp);

error_noalloc:
	FUNC3();

	return( result );
	
}