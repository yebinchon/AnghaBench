#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct sysctl_req {int dummy; } ;
struct lltable {int /*<<< orphan*/  llt_af; TYPE_1__* llt_ifp; scalar_t__ llt_dump_entry; } ;
typedef  int /*<<< orphan*/  llt_foreach_cb_t ;
struct TYPE_3__ {int if_flags; } ;

/* Variables and functions */
 int IFF_LOOPBACK ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 (struct lltable*,int /*<<< orphan*/ *,struct sysctl_req*) ; 

__attribute__((used)) static int
FUNC4(struct lltable *llt, struct sysctl_req *wr)
{
	int error;

	FUNC2();

	if (llt->llt_ifp->if_flags & IFF_LOOPBACK)
		return (0);
	error = 0;

	FUNC0(llt->llt_ifp, llt->llt_af);
	error = FUNC3(llt,
	    (llt_foreach_cb_t *)llt->llt_dump_entry, wr);
	FUNC1(llt->llt_ifp, llt->llt_af);

	return (error);
}