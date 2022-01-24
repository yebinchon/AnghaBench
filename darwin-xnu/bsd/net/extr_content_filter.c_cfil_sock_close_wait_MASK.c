#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct timespec {int tv_sec; int tv_nsec; } ;
struct socket {int so_flags; TYPE_3__* so_cfil; TYPE_2__* so_proto; } ;
typedef  int /*<<< orphan*/  lck_mtx_t ;
typedef  int /*<<< orphan*/  caddr_t ;
struct TYPE_8__ {int /*<<< orphan*/  cfs_close_wait_timeout; int /*<<< orphan*/  cfs_close_wait; } ;
struct TYPE_7__ {int /*<<< orphan*/  cfi_flags; } ;
struct TYPE_6__ {TYPE_1__* pr_domain; int /*<<< orphan*/ * (* pr_getlock ) (struct socket*,int /*<<< orphan*/ ) ;} ;
struct TYPE_5__ {int /*<<< orphan*/ * dom_mtx; } ;

/* Variables and functions */
 int /*<<< orphan*/  CFIF_CLOSE_WAIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 scalar_t__ FUNC1 (struct socket*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  LCK_MTX_ASSERT_OWNED ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int /*<<< orphan*/  LOG_NOTICE ; 
 int NSEC_PER_USEC ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int PCATCH ; 
 int /*<<< orphan*/  PR_F_WILLUNLOCK ; 
 int PSOCK ; 
 int /*<<< orphan*/  SHUT_RDWR ; 
 int SOF_CONTENT_FILTER ; 
 scalar_t__ FUNC4 (struct socket*) ; 
 int cfil_close_wait_timeout ; 
 scalar_t__ FUNC5 (struct socket*) ; 
 int /*<<< orphan*/  FUNC6 (struct socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct socket*) ; 
 TYPE_4__ cfil_stats ; 
 int FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*,struct timespec*) ; 
 int /*<<< orphan*/ * FUNC9 (struct socket*,int /*<<< orphan*/ ) ; 

void
FUNC10(struct socket *so)
{
	lck_mtx_t *mutex_held;
	struct timespec ts;
	int error;

	if (FUNC1(so)) {
		FUNC7(so);
		return;
	}

	if ((so->so_flags & SOF_CONTENT_FILTER) == 0 || so->so_cfil == NULL)
		return;

	FUNC0(LOG_INFO, "so %llx", (uint64_t)FUNC4(so));

	if (so->so_proto->pr_getlock != NULL)
		mutex_held = (*so->so_proto->pr_getlock)(so, PR_F_WILLUNLOCK);
	else
		mutex_held = so->so_proto->pr_domain->dom_mtx;
	FUNC2(mutex_held, LCK_MTX_ASSERT_OWNED);

	while (FUNC5(so)) {
		/*
		 * Notify the filters we are going away so they can detach
		 */
		FUNC6(so, SHUT_RDWR);

		/*
		 * Make sure we need to wait after the filter are notified
		 * of the disconnection
		 */
		if (FUNC5(so) == 0)
			break;

		FUNC0(LOG_INFO, "so %llx waiting",
			(uint64_t)FUNC4(so));

		ts.tv_sec = cfil_close_wait_timeout / 1000;
		ts.tv_nsec = (cfil_close_wait_timeout % 1000) *
			NSEC_PER_USEC * 1000;

		FUNC3(&cfil_stats.cfs_close_wait);
		so->so_cfil->cfi_flags |= CFIF_CLOSE_WAIT;
		error = FUNC8((caddr_t)so->so_cfil, mutex_held,
			PSOCK | PCATCH, "cfil_sock_close_wait", &ts);
		so->so_cfil->cfi_flags &= ~CFIF_CLOSE_WAIT;

		FUNC0(LOG_NOTICE, "so %llx timed out %d",
			(uint64_t)FUNC4(so), (error != 0));

		/*
		 * Force close in case of timeout
		 */
		if (error != 0) {
			FUNC3(&cfil_stats.cfs_close_wait_timeout);
			break;
		}
	}

}