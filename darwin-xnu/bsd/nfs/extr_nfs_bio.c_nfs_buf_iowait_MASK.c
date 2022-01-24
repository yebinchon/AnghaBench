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
struct nfsbuf {int nb_error; int /*<<< orphan*/  nb_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EINTR ; 
 int EIO ; 
 int /*<<< orphan*/  FUNC1 (int,struct nfsbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int,struct nfsbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct nfsbuf*) ; 
 int /*<<< orphan*/  NB_DONE ; 
 int /*<<< orphan*/  NB_EINTR ; 
 int /*<<< orphan*/  NB_ERROR ; 
 scalar_t__ PRIBIO ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct nfsbuf*,int /*<<< orphan*/ ,scalar_t__,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nfs_buf_mutex ; 

int
FUNC8(struct nfsbuf *bp)
{
	FUNC2(549, bp, FUNC4(bp), bp->nb_flags, bp->nb_error);

	FUNC5(nfs_buf_mutex);

	while (!FUNC3(bp->nb_flags, NB_DONE))
		FUNC7(bp, nfs_buf_mutex, PRIBIO + 1, "nfs_buf_iowait", NULL);

	FUNC6(nfs_buf_mutex);

	FUNC1(549, bp, FUNC4(bp), bp->nb_flags, bp->nb_error);

	/* check for interruption of I/O, then errors. */
	if (FUNC3(bp->nb_flags, NB_EINTR)) {
		FUNC0(bp->nb_flags, NB_EINTR);
		return (EINTR);
	} else if (FUNC3(bp->nb_flags, NB_ERROR))
		return (bp->nb_error ? bp->nb_error : EIO);
	return (0);
}