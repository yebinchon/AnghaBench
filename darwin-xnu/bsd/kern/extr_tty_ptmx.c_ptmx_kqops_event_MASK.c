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
struct ptmx_ioctl {int dummy; } ;
struct knote {int kn_flags; } ;

/* Variables and functions */
 int EV_EOF ; 
 int EV_ONESHOT ; 
 long NOTE_REVOKE ; 
 struct ptmx_ioctl* FUNC0 (struct knote*) ; 
 struct tty* FUNC1 (struct knote*) ; 
 int FUNC2 (struct knote*,struct ptmx_ioctl*,struct tty*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty*) ; 
 int /*<<< orphan*/  FUNC4 (struct tty*) ; 

__attribute__((used)) static int
FUNC5(struct knote *kn, long hint)
{
	struct ptmx_ioctl *pti = FUNC0(kn);
	struct tty *tp = FUNC1(kn);
	int ret;
	bool revoked = hint & NOTE_REVOKE;
	hint &= ~NOTE_REVOKE;

	if (!hint) {
		FUNC3(tp);
	}

	if (revoked) {
		kn->kn_flags |= EV_EOF | EV_ONESHOT;
		ret = 1;
	} else {
		ret = FUNC2(kn, pti, tp);
	}

	if (!hint) {
		FUNC4(tp);
	}

	return ret;
}