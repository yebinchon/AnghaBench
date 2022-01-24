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
struct TYPE_4__ {int /*<<< orphan*/  sb_sel; int /*<<< orphan*/  sb_flags; } ;
struct TYPE_3__ {int /*<<< orphan*/  sb_sel; int /*<<< orphan*/  sb_flags; } ;
struct socket {int so_state; TYPE_2__ so_snd; TYPE_1__ so_rcv; scalar_t__ so_oobmark; } ;
struct proc {int dummy; } ;
typedef  int /*<<< orphan*/  kauth_cred_t ;

/* Variables and functions */
 int POLLIN ; 
 int POLLOUT ; 
 int POLLPRI ; 
 int POLLRDBAND ; 
 int POLLRDNORM ; 
 int POLLWRNORM ; 
 int /*<<< orphan*/  PROC_NULL ; 
 int /*<<< orphan*/  SB_SEL ; 
 int SS_RCVATMARK ; 
 struct proc* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct proc*,int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC2 (struct socket*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct socket*) ; 
 int /*<<< orphan*/  FUNC4 (struct socket*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct socket*,int) ; 
 scalar_t__ FUNC6 (struct socket*) ; 
 scalar_t__ FUNC7 (struct socket*) ; 

int
FUNC8(struct socket *so, int events, kauth_cred_t cred, void * wql)
{
#pragma unused(cred)
	struct proc *p = FUNC0();
	int revents = 0;

	FUNC4(so, 1);
	FUNC2(so, PROC_NULL);
	FUNC3(so);

	if (events & (POLLIN | POLLRDNORM))
		if (FUNC6(so))
			revents |= events & (POLLIN | POLLRDNORM);

	if (events & (POLLOUT | POLLWRNORM))
		if (FUNC7(so))
			revents |= events & (POLLOUT | POLLWRNORM);

	if (events & (POLLPRI | POLLRDBAND))
		if (so->so_oobmark || (so->so_state & SS_RCVATMARK))
			revents |= events & (POLLPRI | POLLRDBAND);

	if (revents == 0) {
		if (events & (POLLIN | POLLPRI | POLLRDNORM | POLLRDBAND)) {
			/*
			 * Darwin sets the flag first,
			 * BSD calls selrecord first
			 */
			so->so_rcv.sb_flags |= SB_SEL;
			FUNC1(p, &so->so_rcv.sb_sel, wql);
		}

		if (events & (POLLOUT | POLLWRNORM)) {
			/*
			 * Darwin sets the flag first,
			 * BSD calls selrecord first
			 */
			so->so_snd.sb_flags |= SB_SEL;
			FUNC1(p, &so->so_snd.sb_sel, wql);
		}
	}

	FUNC5(so, 1);
	return (revents);
}