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
struct TYPE_3__ {int /*<<< orphan*/  si_note; } ;
struct TYPE_4__ {int /*<<< orphan*/  si_note; } ;
struct tty {int t_state; TYPE_1__ t_wsel; TYPE_2__ t_rsel; } ;
struct knote {int kn_filter; struct tty* kn_hook; } ;

/* Variables and functions */
#define  EVFILT_READ 129 
#define  EVFILT_WRITE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct knote*) ; 
 int TS_ISOPEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,struct knote*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct tty*) ; 
 int /*<<< orphan*/  FUNC4 (struct tty*) ; 
 int /*<<< orphan*/  FUNC5 (struct tty*) ; 

__attribute__((used)) static void
FUNC6(struct knote *kn)
{
	struct tty *tp;

	tp = kn->kn_hook;
	FUNC1(tp != NULL);

	FUNC3(tp);

	/*
	 * Only detach knotes from open ttys -- ttyclose detaches all knotes
	 * under the lock and unsets TS_ISOPEN.
	 */
	if (tp->t_state & TS_ISOPEN) {
		switch (kn->kn_filter) {
		case EVFILT_READ:
			FUNC0(&tp->t_rsel.si_note, kn);
			break;

		case EVFILT_WRITE:
			FUNC0(&tp->t_wsel.si_note, kn);
			break;

		default:
			FUNC2("invalid knote %p detach, filter: %d", kn, kn->kn_filter);
			break;
		}
	}

	kn->kn_hook = NULL;
	FUNC4(tp);

	FUNC5(tp);
}