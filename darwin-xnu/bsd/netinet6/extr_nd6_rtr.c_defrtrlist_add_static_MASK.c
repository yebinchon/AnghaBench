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
struct nd_defrouter {int rtlifetime; int stateflags; int err; int /*<<< orphan*/  ifp; int /*<<< orphan*/  rtaddr; int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int NDDRF_STATIC ; 
 int /*<<< orphan*/  FUNC0 (struct nd_defrouter*) ; 
 int /*<<< orphan*/  ND_RA_FLAG_RTPREF_MASK ; 
 struct nd_defrouter* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct nd_defrouter* FUNC2 (struct nd_defrouter*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  nd6_mutex ; 

int
FUNC5(struct nd_defrouter *new)
{
	struct nd_defrouter *dr;
	int err = 0;

	new->rtlifetime = -1;
	new->stateflags |= NDDRF_STATIC;

	/* we only want the preference level */
	new->flags &= ND_RA_FLAG_RTPREF_MASK;

	FUNC3(nd6_mutex);
	dr = FUNC1(&new->rtaddr, new->ifp);
	if (dr != NULL && !(dr->stateflags & NDDRF_STATIC)) {
		err = EINVAL;
	} else {
		if (dr != NULL)
			FUNC0(dr);
		dr = FUNC2(new);
		if (dr != NULL)
			err = dr->err;
		else
			err = ENOMEM;
	}
	if (dr != NULL)
		FUNC0(dr);
	FUNC4(nd6_mutex);

	return (err);
}