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

/* Variables and functions */
 int CL_DIRECT_READ_LOCK_BUCKETS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * cl_direct_read_locks ; 
 int /*<<< orphan*/  cl_direct_read_spin_lock ; 
 int /*<<< orphan*/  cl_mtx_attr ; 
 int /*<<< orphan*/  cl_mtx_grp ; 
 int /*<<< orphan*/  cl_mtx_grp_attr ; 
 int /*<<< orphan*/ * cl_transaction_mtxp ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

void
FUNC7(void) {
        /*
	 * allocate lock group attribute and group
	 */
        cl_mtx_grp_attr = FUNC3();
	cl_mtx_grp = FUNC2("cluster I/O", cl_mtx_grp_attr);
		
	/*
	 * allocate the lock attribute
	 */
	cl_mtx_attr = FUNC1();

	cl_transaction_mtxp = FUNC4(cl_mtx_grp, cl_mtx_attr);

	if (cl_transaction_mtxp == NULL)
	        FUNC6("cluster_init: failed to allocate cl_transaction_mtxp");

	FUNC5(&cl_direct_read_spin_lock, cl_mtx_grp, cl_mtx_attr);

	for (int i = 0; i < CL_DIRECT_READ_LOCK_BUCKETS; ++i)
		FUNC0(&cl_direct_read_locks[i]);
}