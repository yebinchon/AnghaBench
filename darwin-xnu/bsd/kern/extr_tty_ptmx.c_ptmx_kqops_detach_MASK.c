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
struct tty {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  si_note; } ;
struct TYPE_4__ {int /*<<< orphan*/  si_note; } ;
struct ptmx_ioctl {TYPE_1__ pt_selw; TYPE_2__ pt_selr; struct tty* pt_tty; } ;
struct knote {int kn_filter; struct ptmx_ioctl* kn_hook; } ;

/* Variables and functions */
#define  EVFILT_READ 129 
#define  EVFILT_WRITE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct knote*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct knote*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tty*) ; 
 int /*<<< orphan*/  FUNC4 (struct tty*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty*) ; 

__attribute__((used)) static void
FUNC6(struct knote *kn)
{
	struct ptmx_ioctl *pti = kn->kn_hook;
	struct tty *tp = pti->pt_tty;

	FUNC1(tp != NULL);

	FUNC3(tp);

	switch (kn->kn_filter) {
	case EVFILT_READ:
		FUNC0(&pti->pt_selr.si_note, kn);
		break;

	case EVFILT_WRITE:
		FUNC0(&pti->pt_selw.si_note, kn);
		break;

	default:
		FUNC2("invalid knote %p detach, filter: %d", kn, kn->kn_filter);
		break;
	}

	kn->kn_hook = NULL;
	FUNC4(tp);

	FUNC5(tp);
}