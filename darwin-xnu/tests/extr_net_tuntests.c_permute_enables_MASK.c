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
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  T_QUIET ; 
 int /*<<< orphan*/  T_WITH_ERRNO ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int,int,int) ; 

__attribute__((used)) static void
FUNC4(void)
{
	int tunsock;
	FUNC0(tunsock = FUNC3(false, false, false), 0, NULL);
	T_QUIET; T_WITH_ERRNO; FUNC1(FUNC2(tunsock), NULL);
	FUNC0(tunsock = FUNC3(false, false, true), 0, NULL);
	T_QUIET; T_WITH_ERRNO; FUNC1(FUNC2(tunsock), NULL);
	FUNC0(tunsock = FUNC3(false, true, false), 0, NULL);
	T_QUIET; T_WITH_ERRNO; FUNC1(FUNC2(tunsock), NULL);
	FUNC0(tunsock = FUNC3(false, true, true), 0, NULL);
	T_QUIET; T_WITH_ERRNO; FUNC1(FUNC2(tunsock), NULL);
	FUNC0(tunsock = FUNC3(true, false, false), 0, NULL);
	T_QUIET; T_WITH_ERRNO; FUNC1(FUNC2(tunsock), NULL);
	FUNC0(tunsock = FUNC3(true, false, true), 0, NULL);
	T_QUIET; T_WITH_ERRNO; FUNC1(FUNC2(tunsock), NULL);
	FUNC0(tunsock = FUNC3(true, true, false), 0, NULL);
	T_QUIET; T_WITH_ERRNO; FUNC1(FUNC2(tunsock), NULL);
	FUNC0(tunsock = FUNC3(true, true, true), 0, NULL);
	T_QUIET; T_WITH_ERRNO; FUNC1(FUNC2(tunsock), NULL);
}