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
struct tty {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  si_note; } ;
struct TYPE_4__ {int /*<<< orphan*/  si_note; } ;
struct ptmx_ioctl {TYPE_2__ pt_selw; TYPE_1__ pt_selr; struct tty* pt_tty; } ;
struct knote {int kn_filter; struct ptmx_ioctl* kn_hook; int /*<<< orphan*/  kn_filtid; } ;
typedef  int /*<<< orphan*/  dev_t ;
struct TYPE_6__ {scalar_t__ d_open; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  EVFILTID_PTMX ; 
#define  EVFILT_READ 129 
#define  EVFILT_WRITE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct knote*) ; 
 TYPE_3__* cdevsw ; 
 int /*<<< orphan*/  FUNC1 (struct knote*,int /*<<< orphan*/ ) ; 
 size_t FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,struct knote*,struct tty*) ; 
 scalar_t__ ptcopen ; 
 struct ptmx_ioctl* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct knote*,struct ptmx_ioctl*,struct tty*) ; 
 int /*<<< orphan*/  FUNC7 (struct tty*) ; 
 int /*<<< orphan*/  FUNC8 (struct tty*) ; 
 int /*<<< orphan*/  FUNC9 (struct tty*) ; 

int
FUNC10(dev_t dev, struct knote *kn)
{
	struct tty *tp = NULL;
	struct ptmx_ioctl *pti = NULL;
	int ret;

	/* make sure we're talking about the right device type */
	if (cdevsw[FUNC2(dev)].d_open != ptcopen) {
		FUNC1(kn, ENODEV);
		return 0;
	}

	if ((pti = FUNC5(FUNC3(dev), 0)) == NULL) {
		FUNC1(kn, ENXIO);
		return 0;
	}

	tp = pti->pt_tty;
	FUNC7(tp);

	kn->kn_filtid = EVFILTID_PTMX;
	kn->kn_hook = pti;

	/*
	 * Attach to the ptmx's selinfo structures.  This is the major difference
	 * to the ptsd filtops, which use the selinfo structures in the tty
	 * structure.
	 */
	switch (kn->kn_filter) {
	case EVFILT_READ:
		FUNC0(&pti->pt_selr.si_note, kn);
		break;
	case EVFILT_WRITE:
		FUNC0(&pti->pt_selw.si_note, kn);
		break;
	default:
		FUNC4("ptmx kevent: unexpected filter: %d, kn = %p, tty = %p",
				kn->kn_filter, kn, tp);
		break;
	}

	/* capture current event state */
	ret = FUNC6(kn, pti, tp);

	/* take a reference on the TTY */
	FUNC9(tp);
	FUNC8(tp);

	return ret;
}