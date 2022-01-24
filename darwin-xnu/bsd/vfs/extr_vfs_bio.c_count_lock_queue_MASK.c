#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* buf_t ;
struct TYPE_6__ {TYPE_2__* tqh_first; } ;
struct TYPE_4__ {TYPE_2__* tqe_next; } ;
struct TYPE_5__ {TYPE_1__ b_freelist; } ;

/* Variables and functions */
 size_t BQ_LOCKED ; 
 int /*<<< orphan*/  buf_mtxp ; 
 TYPE_3__* bufqueues ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

int
FUNC2(void)
{
	buf_t	bp;
	int	n = 0;

	FUNC0(buf_mtxp);

	for (bp = bufqueues[BQ_LOCKED].tqh_first; bp;
	    bp = bp->b_freelist.tqe_next)
		n++;
	FUNC1(buf_mtxp);

	return (n);
}