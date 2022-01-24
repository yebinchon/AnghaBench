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
struct tty {struct pgrp* t_pgrp; } ;
struct pgrp {int pg_listflags; int /*<<< orphan*/  pg_refcount; } ;

/* Variables and functions */
 int PGRP_FLAG_DEAD ; 
 struct pgrp* PGRP_NULL ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

struct pgrp *
FUNC3(struct tty * tp)
{
	struct pgrp * pg = PGRP_NULL;

	FUNC1();
	pg = tp->t_pgrp;

	if (pg != PGRP_NULL) {
		if ((pg->pg_listflags & PGRP_FLAG_DEAD) != 0)
			FUNC0("tty_pgrp: ref being povided for dead pgrp");
		pg->pg_refcount++;
	}
	FUNC2();

	return(pg);
}