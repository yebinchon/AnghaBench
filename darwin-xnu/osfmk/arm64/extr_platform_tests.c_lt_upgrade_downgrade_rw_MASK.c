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
typedef  scalar_t__ boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lt_counter ; 
 scalar_t__ lt_max_upgrade_holders ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  lt_rwlock ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 scalar_t__ lt_upgrade_holders ; 

__attribute__((used)) static void
FUNC11() 
{
	boolean_t upgraded, success;

	success = FUNC6(&lt_rwlock);
	if (!success) {
		FUNC3(&lt_rwlock);
	}

	FUNC7();
	FUNC9();
	FUNC8();
	
	upgraded = FUNC4(&lt_rwlock);
	if (!upgraded) {
		success = FUNC5(&lt_rwlock);

		if (!success) {
			FUNC1(&lt_rwlock);
		}
	}

	lt_upgrade_holders++;
	if (lt_upgrade_holders > lt_max_upgrade_holders) {
		lt_max_upgrade_holders = lt_upgrade_holders;
	}

	lt_counter++;
	FUNC9();

	lt_upgrade_holders--;
	
	FUNC2(&lt_rwlock);

	FUNC10();
	FUNC0(&lt_rwlock);
}