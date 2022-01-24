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
struct mptopt {int mpo_flags; } ;

/* Variables and functions */
 int MPOF_ATTACHED ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  mptopt_zone ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct mptopt*) ; 

void
FUNC2(struct mptopt *mpo)
{
	FUNC0(!(mpo->mpo_flags & MPOF_ATTACHED));

	FUNC1(mptopt_zone, mpo);
}