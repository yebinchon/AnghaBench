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
struct ptmx_ioctl {int pt_flags; int /*<<< orphan*/  pt_tty; int /*<<< orphan*/ * pt_devhandle; } ;
struct TYPE_2__ {int pis_total; int /*<<< orphan*/  pis_free; struct ptmx_ioctl** pis_ioctl_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct ptmx_ioctl*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_TTYS ; 
 int PF_OPEN_M ; 
 int PF_OPEN_S ; 
 TYPE_1__ _state ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(int minor, int open_flag)
{
	struct ptmx_ioctl *old_ptmx_ioctl = NULL;

	FUNC0();

	if (minor < 0 || minor >= _state.pis_total) {
		FUNC1();
		return (-1);
	}

	_state.pis_ioctl_list[minor]->pt_flags &= ~(open_flag);

	/*
	 * Was this the last close?  We will recognize it because we only get
	 * a notification on the last close of a device, and we will have
	 * cleared both the master and the slave open bits in the flags.
	 */
	if (!(_state.pis_ioctl_list[minor]->pt_flags & (PF_OPEN_M|PF_OPEN_S))) {
		/* Mark as free so it can be reallocated later */
		old_ptmx_ioctl = _state.pis_ioctl_list[ minor];
		_state.pis_ioctl_list[minor] = NULL;
		_state.pis_free++;
	}
	FUNC1();

	/* Free old after dropping lock */
	if (old_ptmx_ioctl != NULL) {
		/*
		 * XXX See <rdar://5348651> and <rdar://4854638>
		 *
		 * XXX Conditional to be removed when/if tty/pty reference
		 * XXX counting and mutex implemented.
		 */
		if (old_ptmx_ioctl->pt_devhandle != NULL)
			FUNC3(old_ptmx_ioctl->pt_devhandle);
		FUNC4(old_ptmx_ioctl->pt_tty);
		FUNC2(old_ptmx_ioctl, M_TTYS);
	}

	return (0);	/* Success */
}