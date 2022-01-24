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
struct timespec {int tv_sec; int tv_nsec; } ;
struct nfsbuf {int /*<<< orphan*/  nb_lflags; } ;
typedef  scalar_t__ errno_t ;

/* Variables and functions */
 scalar_t__ EAGAIN ; 
 scalar_t__ EBUSY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int NBAC_NOWAIT ; 
 int NBAC_REMOVE ; 
 int /*<<< orphan*/  NBL_BUSY ; 
 int /*<<< orphan*/  NBL_WANTED ; 
 int NSEC_PER_USEC ; 
 int PRIBIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct nfsbuf*,int /*<<< orphan*/ ,int,char*,struct timespec*) ; 
 int /*<<< orphan*/  nfs_buf_mutex ; 
 int /*<<< orphan*/  FUNC3 (struct nfsbuf*) ; 

errno_t
FUNC4(struct nfsbuf *bp, int flags, int slpflag, int slptimeo)
{
	errno_t error;
	struct timespec ts;

	if (FUNC0(bp->nb_lflags, NBL_BUSY)) {
		/*	
		 * since the lck_mtx_lock may block, the buffer
		 * may become BUSY, so we need to recheck for
		 * a NOWAIT request
		 */
	        if (flags & NBAC_NOWAIT)
			return (EBUSY);
	        FUNC1(bp->nb_lflags, NBL_WANTED);

		ts.tv_sec = (slptimeo/100);
		/* the hz value is 100; which leads to 10ms */
		ts.tv_nsec = (slptimeo % 100) * 10  * NSEC_PER_USEC * 1000;

		error = FUNC2(bp, nfs_buf_mutex, slpflag | (PRIBIO + 1),
			"nfs_buf_acquire", &ts);
		if (error)
			return (error);
		return (EAGAIN);
	}
	if (flags & NBAC_REMOVE)
	        FUNC3(bp);
	FUNC1(bp->nb_lflags, NBL_BUSY);

	return (0);
}