#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct nfsbuf {int /*<<< orphan*/  nb_lflags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int NBL_BUSY ; 
 int NBL_WANTED ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (struct nfsbuf*) ; 

void
FUNC4(struct nfsbuf *bp)
{
	int need_wakeup = 0;

	if (!FUNC1(bp->nb_lflags, NBL_BUSY))
		FUNC2("nfs_buf_drop: buffer not busy!");
	if (FUNC1(bp->nb_lflags, NBL_WANTED)) {
	        /* delay the actual wakeup until after we clear NBL_BUSY */
		need_wakeup = 1;
	}
	/* Unlock the buffer. */
	FUNC0(bp->nb_lflags, (NBL_BUSY | NBL_WANTED));

	if (need_wakeup)
	        FUNC3(bp);
}