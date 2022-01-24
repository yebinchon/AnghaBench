#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* buf_t ;
struct TYPE_8__ {int /*<<< orphan*/  bufs_eblk; } ;
struct TYPE_7__ {int /*<<< orphan*/  b_flags; } ;

/* Variables and functions */
 int BQ_EMPTY ; 
 int B_INVAL ; 
 int B_META ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  buf_mtxp ; 
 TYPE_3__ bufstats ; 
 TYPE_1__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  invalhash ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

buf_t
FUNC7(int size)
{
	buf_t	bp = NULL;
	int queue = BQ_EMPTY;

	do {
		FUNC5(buf_mtxp);

		bp = FUNC4(0, 0, &queue);
	} while (bp == NULL);

	FUNC0(bp->b_flags, (B_META|B_INVAL));

#if DIAGNOSTIC
	assert(queue == BQ_EMPTY);
#endif /* DIAGNOSTIC */
	/* XXX need to implement logic to deal with other queues */

	FUNC3(bp, &invalhash);
	bufstats.bufs_eblk++;

	FUNC6(buf_mtxp);

	FUNC1(bp, size);

	return (bp);
}