#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vnode_t ;
typedef  TYPE_3__* proc_t ;
typedef  TYPE_4__* buf_t ;
struct TYPE_13__ {int /*<<< orphan*/  b_flags; int /*<<< orphan*/  b_vp; } ;
struct TYPE_12__ {TYPE_2__* p_stats; } ;
struct TYPE_10__ {int /*<<< orphan*/  ru_oublock; } ;
struct TYPE_11__ {TYPE_1__ p_ru; } ;

/* Variables and functions */
 int /*<<< orphan*/  B_DELWRI ; 
 int /*<<< orphan*/  B_DONE ; 
 int /*<<< orphan*/  B_LOCKED ; 
 int EAGAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  VNODE_ASYNC_THROTTLE ; 
 int FUNC4 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC7 () ; 
 int nbdwrite ; 
 int nbuf_headers ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 

int
FUNC9(buf_t bp, int return_error)
{
	proc_t	p  = FUNC7();
	vnode_t	vp = bp->b_vp;

	/*
	 * If the block hasn't been seen before:
	 *	(1) Mark it as having been seen,
	 *	(2) Charge for the write.
	 *	(3) Make sure it's on its vnode's correct block list,
	 */
	if (!FUNC0(bp->b_flags, B_DELWRI)) {
		FUNC3(bp->b_flags, B_DELWRI);
		if (p && p->p_stats) { 
			FUNC2(&p->p_stats->p_ru.ru_oublock);	/* XXX */
		}
		FUNC1(1, &nbdwrite);
		FUNC6(bp, vp);
	}

	/*
	 * if we're not LOCKED, but the total number of delayed writes
	 * has climbed above 75% of the total buffers in the system
	 * return an error if the caller has indicated that it can 
	 * handle one in this case, otherwise schedule the I/O now
	 * this is done to prevent us from allocating tons of extra
	 * buffers when dealing with virtual disks (i.e. DiskImages),
	 * because additional buffers are dynamically allocated to prevent
	 * deadlocks from occurring
	 *
	 * however, can't do a buf_bawrite() if the LOCKED bit is set because the
	 * buffer is part of a transaction and can't go to disk until
	 * the LOCKED bit is cleared.
	 */
	if (!FUNC0(bp->b_flags, B_LOCKED) && nbdwrite > ((nbuf_headers/4)*3)) {
		if (return_error)
			return (EAGAIN);
		/*
		 * If the vnode has "too many" write operations in progress
		 * wait for them to finish the IO
		 */
		(void)FUNC8(vp, VNODE_ASYNC_THROTTLE, 0, 0, "buf_bdwrite");

		return (FUNC4(bp));
	}
	 
	/* Otherwise, the "write" is done, so mark and release the buffer. */
	FUNC3(bp->b_flags, B_DONE);
	FUNC5(bp);
	return (0);
}