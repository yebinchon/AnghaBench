#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int ref_count; int /*<<< orphan*/  rw_lock; } ;
typedef  TYPE_1__ cl_direct_read_lock_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  chain ; 
 int /*<<< orphan*/  cl_direct_read_spin_lock ; 
 int /*<<< orphan*/  cl_mtx_grp ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(cl_direct_read_lock_t *lck)
{
	FUNC3(&lck->rw_lock);

	FUNC4(&cl_direct_read_spin_lock);
	if (lck->ref_count == 1) {
		FUNC1(lck, chain);
		FUNC5(&cl_direct_read_spin_lock);
		FUNC2(&lck->rw_lock, cl_mtx_grp);
		FUNC0(lck, M_TEMP);
	} else {
		--lck->ref_count;
		FUNC5(&cl_direct_read_spin_lock);
	}
}