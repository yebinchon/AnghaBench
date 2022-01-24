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
struct TYPE_5__ {int /*<<< orphan*/  si_note; } ;
struct TYPE_4__ {int /*<<< orphan*/  si_note; } ;
struct tty {int t_state; TYPE_2__ t_wsel; TYPE_1__ t_rsel; } ;
struct ptmx_ioctl {struct tty* pt_tty; } ;
struct knote {int kn_filter; struct tty* kn_hook; int /*<<< orphan*/  kn_filtid; } ;
typedef  int /*<<< orphan*/  dev_t ;
struct TYPE_6__ {scalar_t__ d_open; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENODEV ; 
 int /*<<< orphan*/  ENXIO ; 
 int /*<<< orphan*/  EVFILTID_PTSD ; 
#define  EVFILT_READ 129 
#define  EVFILT_WRITE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct knote*) ; 
 int TS_ISOPEN ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_3__* cdevsw ; 
 int /*<<< orphan*/  FUNC2 (struct knote*,int /*<<< orphan*/ ) ; 
 size_t FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,struct knote*,struct tty*) ; 
 struct ptmx_ioctl* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct knote*,struct tty*) ; 
 scalar_t__ ptsopen ; 
 int /*<<< orphan*/  FUNC8 (struct tty*) ; 
 int /*<<< orphan*/  FUNC9 (struct tty*) ; 
 int /*<<< orphan*/  FUNC10 (struct tty*) ; 

int
FUNC11(dev_t dev, struct knote *kn)
{
	struct tty *tp = NULL;
	struct ptmx_ioctl *pti = NULL;
	int ret;

	/* make sure we're talking about the right device type */
	if (cdevsw[FUNC3(dev)].d_open != ptsopen) {
		FUNC2(kn, ENODEV);
		return 0;
	}

	if ((pti = FUNC6(FUNC4(dev), 0)) == NULL) {
		FUNC2(kn, ENXIO);
		return 0;
	}

	tp = pti->pt_tty;
	FUNC8(tp);

	FUNC1(tp->t_state & TS_ISOPEN);

	kn->kn_filtid = EVFILTID_PTSD;
	/* the tty will be freed when detaching the knote */
	FUNC10(tp);
	kn->kn_hook = tp;

	switch (kn->kn_filter) {
	case EVFILT_READ:
		FUNC0(&tp->t_rsel.si_note, kn);
		break;
	case EVFILT_WRITE:
		FUNC0(&tp->t_wsel.si_note, kn);
		break;
	default:
		FUNC5("ptsd kevent: unexpected filter: %d, kn = %p, tty = %p",
				kn->kn_filter, kn, tp);
		break;
	}

	/* capture current event state */
	ret = FUNC7(kn, tp);

	FUNC9(tp);

	return ret;
}