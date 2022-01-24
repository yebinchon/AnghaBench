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
struct pgrp {int pg_refcount; int pg_listflags; } ;

/* Variables and functions */
 int PGRP_FLAG_TERMINATE ; 
 int /*<<< orphan*/  FUNC0 (struct pgrp*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

void
FUNC3(struct pgrp * pgrp)
{
	FUNC1();
	if ((pgrp->pg_refcount == 1) && ((pgrp->pg_listflags & PGRP_FLAG_TERMINATE) == PGRP_FLAG_TERMINATE)) {
		FUNC2();
		FUNC0(pgrp);
		return;
	}

	pgrp->pg_refcount--;
	FUNC2();
}