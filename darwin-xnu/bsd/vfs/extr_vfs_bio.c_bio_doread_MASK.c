#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vnode_t ;
struct proc {TYPE_2__* p_stats; } ;
struct buf {int /*<<< orphan*/  b_rcred; int /*<<< orphan*/  b_flags; } ;
typedef  int /*<<< orphan*/  kauth_cred_t ;
typedef  int /*<<< orphan*/  daddr64_t ;
typedef  struct buf* buf_t ;
struct TYPE_3__ {int /*<<< orphan*/  ru_inblock; } ;
struct TYPE_4__ {TYPE_1__ p_ru; } ;

/* Variables and functions */
 int B_DELWRI ; 
 int B_DONE ; 
 int B_READ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TR_BREADHIT ; 
 int /*<<< orphan*/  TR_BREADMISS ; 
 int /*<<< orphan*/  FUNC4 (struct buf*) ; 
 int /*<<< orphan*/  FUNC5 (struct buf*) ; 
 struct buf* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct proc* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct buf *
FUNC11(vnode_t vp, daddr64_t blkno, int size, kauth_cred_t cred, int async, int queuetype)
{
	buf_t	bp;

	bp = FUNC6(vp, blkno, size, 0, 0, queuetype);

	/*
	 * If buffer does not have data valid, start a read.
	 * Note that if buffer is B_INVAL, buf_getblk() won't return it.
	 * Therefore, it's valid if it's I/O has completed or been delayed.
	 */
	if (!FUNC0(bp->b_flags, (B_DONE | B_DELWRI))) {
		struct proc *p;

		p = FUNC7();

		/* Start I/O for the buffer (keeping credentials). */
		FUNC3(bp->b_flags, B_READ | async);
		if (FUNC1(cred) && !FUNC1(bp->b_rcred)) {
			FUNC8(cred);
			bp->b_rcred = cred;
		}

		FUNC4(bp);

		FUNC10(TR_BREADMISS, FUNC9(vp, size), blkno);

		/* Pay for the read. */
		if (p && p->p_stats) { 
			FUNC2(&p->p_stats->p_ru.ru_inblock);		/* XXX */
		}

		if (async) {
		        /*
			 * since we asked for an ASYNC I/O
			 * the biodone will do the brelse
			 * we don't want to pass back a bp
			 * that we don't 'own'
			 */
		        bp = NULL;
		}
	} else if (async) {
		FUNC5(bp);
		bp = NULL;
	}

	FUNC10(TR_BREADHIT, FUNC9(vp, size), blkno);

	return (bp);
}