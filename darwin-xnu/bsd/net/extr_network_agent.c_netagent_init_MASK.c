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
typedef  scalar_t__ errno_t ;

/* Variables and functions */
 scalar_t__ ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  NETAGENT_CONTROL_NAME ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  master_netagent_list ; 
 int /*<<< orphan*/ * netagent_grp_attr ; 
 int /*<<< orphan*/ * netagent_kctlref ; 
 int /*<<< orphan*/  netagent_lock ; 
 int /*<<< orphan*/ * netagent_mtx_attr ; 
 int /*<<< orphan*/ * netagent_mtx_grp ; 
 scalar_t__ FUNC10 () ; 

errno_t
FUNC11(void)
{
	errno_t result = 0;

	result = FUNC10();
	if (result != 0) {
		goto done;
	}

	netagent_grp_attr = FUNC6();
	if (netagent_grp_attr == NULL) {
		FUNC1(LOG_ERR, "lck_grp_attr_alloc_init failed");
		result = ENOMEM;
		goto done;
	}

	netagent_mtx_grp = FUNC5(NETAGENT_CONTROL_NAME, netagent_grp_attr);
	if (netagent_mtx_grp == NULL) {
		FUNC1(LOG_ERR, "lck_grp_alloc_init failed");
		result = ENOMEM;
		goto done;
	}

	netagent_mtx_attr = FUNC3();
	if (netagent_mtx_attr == NULL) {
		FUNC1(LOG_ERR, "lck_attr_alloc_init failed");
		result = ENOMEM;
		goto done;
	}

	FUNC9(&netagent_lock, netagent_mtx_grp, netagent_mtx_attr);

	FUNC0(&master_netagent_list);

done:
	if (result != 0) {
		if (netagent_mtx_attr != NULL) {
			FUNC4(netagent_mtx_attr);
			netagent_mtx_attr = NULL;
		}
		if (netagent_mtx_grp != NULL) {
			FUNC8(netagent_mtx_grp);
			netagent_mtx_grp = NULL;
		}
		if (netagent_grp_attr != NULL) {
			FUNC7(netagent_grp_attr);
			netagent_grp_attr = NULL;
		}
		if (netagent_kctlref != NULL) {
			FUNC2(netagent_kctlref);
			netagent_kctlref = NULL;
		}
	}
	return (result);
}