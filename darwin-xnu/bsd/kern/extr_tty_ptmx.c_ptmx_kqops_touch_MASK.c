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
struct knote {int /*<<< orphan*/  kn_sdata; int /*<<< orphan*/  kn_sfflags; } ;
struct kevent_internal_s {int /*<<< orphan*/  data; int /*<<< orphan*/  fflags; } ;

/* Variables and functions */
 struct ptmx_ioctl* FUNC0 (struct knote*) ; 
 struct tty* FUNC1 (struct knote*) ; 
 int FUNC2 (struct knote*,struct ptmx_ioctl*,struct tty*) ; 
 int /*<<< orphan*/  FUNC3 (struct tty*) ; 
 int /*<<< orphan*/  FUNC4 (struct tty*) ; 

__attribute__((used)) static int
FUNC5(struct knote *kn, struct kevent_internal_s *kev)
{
	struct ptmx_ioctl *pti = FUNC0(kn);
	struct tty *tp = FUNC1(kn);
	int ret;

	FUNC3(tp);

	/* accept new kevent state */
	kn->kn_sfflags = kev->fflags;
	kn->kn_sdata = kev->data;

	/* recapture fired state of knote */
	ret = FUNC2(kn, pti, tp);

	FUNC4(tp);

	return ret;
}