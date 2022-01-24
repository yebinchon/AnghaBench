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
 int /*<<< orphan*/  acquire ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int*,int /*<<< orphan*/ ) ; 
 int FUNC7 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  relaxed ; 
 int /*<<< orphan*/  release ; 
 int /*<<< orphan*/  test_mtx ; 
 int /*<<< orphan*/  test_mtx_attr ; 
 int /*<<< orphan*/  test_mtx_grp ; 
 int /*<<< orphan*/  test_mtx_grp_attr ; 

void
FUNC8(void)
{
	static int first = 0;

	/*
	 * This should be substituted with a version
	 * of dispatch_once for kernel (rdar:39537874)
	 */
	if (FUNC7(&first, acquire) >= 2)
		return;

	if (FUNC5(&first, 0, 1, relaxed)){
		FUNC2(&test_mtx_grp_attr);
		FUNC3(&test_mtx_grp, "testlck_mtx", &test_mtx_grp_attr);
		FUNC1(&test_mtx_attr);
		FUNC4(&test_mtx, &test_mtx_grp, &test_mtx_attr);

		FUNC0();

		FUNC6(&first, release);
	}

	while(FUNC7(&first, acquire) < 2);
}