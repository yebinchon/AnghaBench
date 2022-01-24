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
struct tty {int dummy; } ;
struct knote {int kn_flags; } ;

/* Variables and functions */
 int /*<<< orphan*/  ENOENT ; 
 int EV_EOF ; 
 int EV_ONESHOT ; 
 long NOTE_REVOKE ; 
 int FUNC0 (struct knote*,struct tty*) ; 
 int /*<<< orphan*/  FUNC1 (struct knote*,int /*<<< orphan*/ ) ; 
 struct tty* FUNC2 (struct knote*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty*) ; 
 int /*<<< orphan*/  FUNC4 (struct tty*) ; 

__attribute__((used)) static int
FUNC5(struct knote *kn, long hint)
{
	int ret;
	struct tty *tp;
	bool revoked = hint & NOTE_REVOKE;
	hint &= ~NOTE_REVOKE;

	tp = FUNC2(kn);
	if (!tp) {
		FUNC1(kn, ENOENT);
		return 0;
	}

	if (!hint) {
		FUNC3(tp);
	}

	if (revoked) {
		kn->kn_flags |= EV_EOF | EV_ONESHOT;
		ret = 1;
	} else {
		ret = FUNC0(kn, tp);
	}

	if (!hint) {
		FUNC4(tp);
	}

	return ret;
}