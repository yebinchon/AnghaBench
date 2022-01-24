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
 int /*<<< orphan*/  QOS_CLASS_USER_INITIATED ; 
 int /*<<< orphan*/  QOS_CLASS_USER_INTERACTIVE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  take_lock_check_priority ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  try_to_take_lock_and_unlock ; 

__attribute__((used)) static void
FUNC3(int type)
{
	FUNC0("Test 1: test if lock contended by a UI thread boosts the owner to UI qos");

	/* Create a thread at IN and take lock */
	FUNC2(QOS_CLASS_USER_INITIATED, &take_lock_check_priority, type);

	/* Create a thread at UI and try to take lock */
	FUNC2(QOS_CLASS_USER_INTERACTIVE, &try_to_take_lock_and_unlock, type);

	FUNC1(12);
	return;
}