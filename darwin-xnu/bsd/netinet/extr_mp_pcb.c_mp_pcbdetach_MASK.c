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
struct socket {int so_flags; } ;
struct mppcb {int /*<<< orphan*/  mpp_state; } ;

/* Variables and functions */
 int /*<<< orphan*/  MPPCB_STATE_DEAD ; 
 int SOF_PCBCLEARING ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct mppcb* FUNC1 (struct socket*) ; 

void
FUNC2(struct socket *mp_so)
{
	struct mppcb *mpp = FUNC1(mp_so);

	mpp->mpp_state = MPPCB_STATE_DEAD;
	if (!(mp_so->so_flags & SOF_PCBCLEARING))
		mp_so->so_flags |= SOF_PCBCLEARING;

	FUNC0();
}