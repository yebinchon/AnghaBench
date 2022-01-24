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
typedef  int /*<<< orphan*/  kern_return_t ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  KERN_NOT_SUPPORTED ; 
 int /*<<< orphan*/  KERN_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ mtrr_initialized ; 
 int /*<<< orphan*/  mtrr_update_action ; 
 int /*<<< orphan*/  mtrr_update_setup ; 
 int /*<<< orphan*/  mtrr_update_teardown ; 

kern_return_t
FUNC3(void)
{
	if (mtrr_initialized == FALSE)
		return KERN_NOT_SUPPORTED;

	FUNC0();
	FUNC2(mtrr_update_setup,
		      mtrr_update_action,
		      mtrr_update_teardown, NULL);
	FUNC1();

	return KERN_SUCCESS;
}