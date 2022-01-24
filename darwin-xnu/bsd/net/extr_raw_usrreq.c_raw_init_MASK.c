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
struct protosw {int dummy; } ;
struct domain {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  raw_mtx ; 
 int /*<<< orphan*/  raw_mtx_attr ; 
 int /*<<< orphan*/  raw_mtx_grp ; 
 int /*<<< orphan*/  raw_mtx_grp_attr ; 
 int /*<<< orphan*/  rawcb_list ; 

void
FUNC5(struct protosw *pp, struct domain *dp)
{
#pragma unused(pp, dp)
	static int raw_initialized = 0;

	/* This is called by key_init as well, so do it only once */
	if (!raw_initialized) {
		raw_initialized = 1;

		raw_mtx_grp_attr = FUNC3();
		raw_mtx_grp = FUNC2("rawcb", raw_mtx_grp_attr);
		raw_mtx_attr = FUNC1();

		FUNC4(raw_mtx, raw_mtx_grp, raw_mtx_attr);
		FUNC0(&rawcb_list);
	}
}