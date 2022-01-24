#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_3__* vnode_t ;
typedef  TYPE_4__* proc_t ;
typedef  int /*<<< orphan*/  errno_t ;
typedef  TYPE_5__* buf_t ;
struct TYPE_19__ {scalar_t__ b_datap; int /*<<< orphan*/  b_lblkno; int /*<<< orphan*/  b_bcount; int /*<<< orphan*/  b_flags; TYPE_3__* b_vp; } ;
struct TYPE_18__ {TYPE_2__* p_stats; } ;
struct TYPE_17__ {int /*<<< orphan*/  v_numoutput; } ;
struct TYPE_15__ {int /*<<< orphan*/  ru_oublock; } ;
struct TYPE_16__ {TYPE_1__ p_ru; } ;

/* Variables and functions */
 int B_ASYNC ; 
 int B_DELWRI ; 
 int B_DONE ; 
 int B_ERROR ; 
 int B_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TR_BUFWRITE ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 scalar_t__ FUNC6 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_5__*,TYPE_3__*) ; 
 TYPE_4__* FUNC10 () ; 
 int /*<<< orphan*/  nbdwrite ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

errno_t
FUNC13(buf_t bp)
{
	int	sync, wasdelayed;
	errno_t	rv;
	proc_t	p = FUNC10();
	vnode_t	vp = bp->b_vp;

	if (bp->b_datap == 0) {
	        if (FUNC6(bp) == 0)
		        return (0);
	}
	/* Remember buffer type, to switch on it later. */
	sync = !FUNC1(bp->b_flags, B_ASYNC);
	wasdelayed = FUNC1(bp->b_flags, B_DELWRI);
	FUNC0(bp->b_flags, (B_READ | B_DONE | B_ERROR | B_DELWRI));

	if (wasdelayed)
		FUNC3(-1, &nbdwrite);

	if (!sync) {
		/*
		 * If not synchronous, pay for the I/O operation and make
		 * sure the buf is on the correct vnode queue.  We have
		 * to do this now, because if we don't, the vnode may not
		 * be properly notified that its I/O has completed.
		 */
		if (wasdelayed)
			FUNC9(bp, vp);
		else 
			if (p && p->p_stats) {
				FUNC4(&p->p_stats->p_ru.ru_oublock);	/* XXX */
			}
	}
	FUNC12(TR_BUFWRITE, FUNC11(vp, bp->b_bcount), bp->b_lblkno);

	/* Initiate disk write.  Make sure the appropriate party is charged. */

        FUNC2(1, &vp->v_numoutput);
	
	FUNC5(bp);

	if (sync) {
		/*
		 * If I/O was synchronous, wait for it to complete.
		 */
		rv = FUNC7(bp);

		/*
		 * Pay for the I/O operation, if it's not been paid for, and
		 * make sure it's on the correct vnode queue. (async operatings
		 * were payed for above.)
		 */
		if (wasdelayed)
			FUNC9(bp, vp);
		else
			if (p && p->p_stats) { 
				FUNC4(&p->p_stats->p_ru.ru_oublock);	/* XXX */
			}

		/* Release the buffer. */
		FUNC8(bp);

		return (rv);
	} else {
		return (0);
	}
}