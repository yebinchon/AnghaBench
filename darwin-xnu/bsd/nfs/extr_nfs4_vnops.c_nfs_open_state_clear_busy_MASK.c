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
typedef  TYPE_1__* nfsnode_t ;
struct TYPE_3__ {int n_openflags; int /*<<< orphan*/  n_openlock; } ;

/* Variables and functions */
 int N_OPENBUSY ; 
 int N_OPENWANT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int*) ; 

void
FUNC4(nfsnode_t np)
{
	int wanted;

	FUNC0(&np->n_openlock);
	if (!(np->n_openflags & N_OPENBUSY))
		FUNC2("nfs_open_state_clear_busy");
	wanted = (np->n_openflags & N_OPENWANT);
	np->n_openflags &= ~(N_OPENBUSY|N_OPENWANT);
	FUNC1(&np->n_openlock);
	if (wanted)
		FUNC3(&np->n_openflags);
}