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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (size_t const) ; 
 int /*<<< orphan*/  ctl_mtx ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int
FUNC5(const size_t *mib, size_t miblen, void *oldp, size_t *oldlenp,
    void *newp, size_t newlen)
{
	int ret;

	FUNC0();
	FUNC1();
	FUNC3(&ctl_mtx);
	FUNC2(mib[1]);
	FUNC4(&ctl_mtx);

	ret = 0;
label_return:
	return (ret);
}