#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct socket {int so_flags; int so_state; int /*<<< orphan*/  so_snd; TYPE_1__* so_cfil; } ;
struct TYPE_2__ {int cfi_flags; } ;

/* Variables and functions */
 int CFIF_DROP ; 
 int CFIF_SHUT_RD ; 
 int CFIF_SHUT_WR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,...) ; 
 int EJUSTRETURN ; 
 int ENOTCONN ; 
 scalar_t__ FUNC1 (struct socket*) ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  LOG_INFO ; 
 int SHUT_RD ; 
 int SHUT_RDWR ; 
 int SHUT_WR ; 
 int SOF_CONTENT_FILTER ; 
 int SS_CANTRCVMORE ; 
 int SS_CANTSENDMORE ; 
 scalar_t__ FUNC2 (struct socket*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct socket*,int) ; 
 int FUNC5 (struct socket*,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct socket*) ; 

int
FUNC7(struct socket *so, int *how)
{
	int error = 0;

	if (FUNC1(so)) {
		return (FUNC5(so, how));
	}

	if ((so->so_flags & SOF_CONTENT_FILTER) == 0 || so->so_cfil == NULL)
		goto done;

	FUNC6(so);

	FUNC0(LOG_INFO, "so %llx how %d",
		(uint64_t)FUNC2(so), *how);

	/*
	 * Check the state of the socket before the content filter
	 */
	if (*how != SHUT_WR && (so->so_state & SS_CANTRCVMORE) != 0) {
		/* read already shut down */
		error = ENOTCONN;
		goto done;
	}
	if (*how != SHUT_RD && (so->so_state & SS_CANTSENDMORE) != 0) {
		/* write already shut down */
		error = ENOTCONN;
		goto done;
	}

	if ((so->so_cfil->cfi_flags & CFIF_DROP) != 0) {
		FUNC0(LOG_ERR, "so %llx drop set",
			(uint64_t)FUNC2(so));
		goto done;
	}

	/*
	 * shutdown read: SHUT_RD or SHUT_RDWR
	 */
	if (*how != SHUT_WR) {
		if (so->so_cfil->cfi_flags & CFIF_SHUT_RD) {
			error = ENOTCONN;
			goto done;
		}
		so->so_cfil->cfi_flags |= CFIF_SHUT_RD;
		FUNC4(so, SHUT_RD);
	}
	/*
	 * shutdown write: SHUT_WR or SHUT_RDWR
	 */
	if (*how != SHUT_RD) {
		if (so->so_cfil->cfi_flags & CFIF_SHUT_WR) {
			error = ENOTCONN;
			goto done;
		}
		so->so_cfil->cfi_flags |= CFIF_SHUT_WR;
		FUNC4(so, SHUT_WR);
		/*
		 * When outgoing data is pending, we delay the shutdown at the
		 * protocol level until the content filters give the final
		 * verdict on the pending data.
		 */
		if (FUNC3(&so->so_snd) != 0) {
			/*
			 * When shutting down the read and write sides at once
			 * we can proceed to the final shutdown of the read
			 * side. Otherwise, we just return.
			 */
			if (*how == SHUT_WR) {
				error = EJUSTRETURN;
			} else if (*how == SHUT_RDWR) {
				*how = SHUT_RD;
			}
		}
	}
done:
	return (error);
}