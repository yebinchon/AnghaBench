#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  props ;
struct TYPE_3__ {scalar_t__ user_data; int /*<<< orphan*/  priority; } ;
typedef  TYPE_1__ memorystatus_priority_properties_t ;

/* Variables and functions */
 int /*<<< orphan*/  JETSAM_PRIORITY_IDLE ; 
 int /*<<< orphan*/  MEMORYSTATUS_CMD_SET_PRIORITY_PROPERTIES ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void FUNC4(void)
{
	memorystatus_priority_properties_t props;

	/*
	 * We want to move the processes we spawn into the idle band, so that jetsam can target them first.
	 * This prevents other important BATS tasks from getting killed, specially in LTE where we have very few
	 * processes running.
	 *
	 * This is only needed for tests which (are likely to) lead us down the generic jetsam path.
	 */
	props.priority = JETSAM_PRIORITY_IDLE;
	props.user_data = 0;

	if (FUNC2(MEMORYSTATUS_CMD_SET_PRIORITY_PROPERTIES, FUNC1(), 0, &props, sizeof(props))) {
		FUNC3("memorystatus call to change jetsam priority failed\n");
		FUNC0(-1);
	}
}