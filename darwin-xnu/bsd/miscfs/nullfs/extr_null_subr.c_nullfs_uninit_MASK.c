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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_TEMP ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * null_hashlck_attr ; 
 int /*<<< orphan*/ * null_hashlck_grp ; 
 int /*<<< orphan*/ * null_hashlck_grp_attr ; 
 int /*<<< orphan*/  null_hashmtx ; 
 int /*<<< orphan*/  null_node_hashtbl ; 

int
FUNC5()
{
	/* This gets called when the fs is uninstalled, there wasn't an exact
	 * equivalent in vfsops */
	FUNC4(&null_hashmtx, null_hashlck_grp);
	FUNC0(null_node_hashtbl, M_TEMP);
	if (null_hashlck_grp_attr) {
		FUNC2(null_hashlck_grp_attr);
		null_hashlck_grp_attr = NULL;
	}
	if (null_hashlck_grp) {
		FUNC3(null_hashlck_grp);
		null_hashlck_grp = NULL;
	}
	if (null_hashlck_attr) {
		FUNC1(null_hashlck_attr);
		null_hashlck_attr = NULL;
	}
	return (0);
}