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
struct knote {scalar_t__ kn_fflags; int /*<<< orphan*/  kn_sfflags; } ;
struct kevent_internal_s {int /*<<< orphan*/  fflags; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 

__attribute__((used)) static int
FUNC2(struct knote *kn, struct kevent_internal_s *kev)
{
	int res;

	FUNC0();

	/* accept new filter flags and mask off output events no long interesting */
	kn->kn_sfflags = kev->fflags;

	/* restrict the current results to the (smaller?) set of new interest */
	/*
	 * For compatibility with previous implementations, we leave kn_fflags
	 * as they were before.
	 */
	//kn->kn_fflags &= kn->kn_sfflags;

	res = (kn->kn_fflags != 0);

	FUNC1();

	return res;
}