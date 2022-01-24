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
 int /*<<< orphan*/  take_lock_and_exit ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  try_to_take_lock_and_unlock ; 
 int /*<<< orphan*/  unlock_an_owner_exited_lock ; 

__attribute__((used)) static void
FUNC3(int type)
{
	FUNC0("Test 3: test if lock owner thread exiting without unlocking allows turnstile to work correctly");

	/* Create a thread at IN and take lock */
	FUNC2(QOS_CLASS_USER_INITIATED, &take_lock_and_exit, type);

	/* Create a thread at UI and try to take lock */
	FUNC2(QOS_CLASS_USER_INTERACTIVE, &try_to_take_lock_and_unlock, type);

	/* Create a thread at UI and try to take lock */
	FUNC2(QOS_CLASS_USER_INTERACTIVE, &unlock_an_owner_exited_lock, type);

	FUNC1(16);
	return;
}