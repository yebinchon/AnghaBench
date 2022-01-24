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
struct socket {int so_flags; int so_restrictions; int /*<<< orphan*/  so_klist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,long) ; 
 int SOF_KNOTE ; 
 int SOF_MP_SUBFLOW ; 
 long SO_FILT_HINT_IFDENIED ; 
 int SO_RESTRICT_DENY_CELLULAR ; 
 int SO_RESTRICT_DENY_EXPENSIVE ; 
 int /*<<< orphan*/  FUNC1 (struct socket*) ; 
 int /*<<< orphan*/  FUNC2 (struct socket*,long) ; 

void
FUNC3(struct socket *so, long hint)
{
	if (so->so_flags & SOF_KNOTE)
		FUNC0(&so->so_klist, hint);

	FUNC2(so, hint);

	/*
	 * Don't post an event if this a subflow socket or
	 * the app has opted out of using cellular interface
	 */
	if ((hint & SO_FILT_HINT_IFDENIED) &&
	    !(so->so_flags & SOF_MP_SUBFLOW) &&
	    !(so->so_restrictions & SO_RESTRICT_DENY_CELLULAR) &&
	    !(so->so_restrictions & SO_RESTRICT_DENY_EXPENSIVE))
		FUNC1(so);
}