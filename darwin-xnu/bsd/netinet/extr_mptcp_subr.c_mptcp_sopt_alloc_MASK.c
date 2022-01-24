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
struct mptopt {int dummy; } ;

/* Variables and functions */
 int M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (struct mptopt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mptopt_zone ; 
 int /*<<< orphan*/  mptopt_zone_size ; 
 struct mptopt* FUNC1 (int /*<<< orphan*/ ) ; 
 struct mptopt* FUNC2 (int /*<<< orphan*/ ) ; 

struct mptopt *
FUNC3(int how)
{
	struct mptopt *mpo;

	mpo = (how == M_WAITOK) ? FUNC1(mptopt_zone) :
	    FUNC2(mptopt_zone);
	if (mpo != NULL) {
		FUNC0(mpo, mptopt_zone_size);
	}

	return (mpo);
}