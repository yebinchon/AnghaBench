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
struct ubc_info {scalar_t__ ui_control; int /*<<< orphan*/  ui_ucred; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ MEMORY_OBJECT_CONTROL_NULL ; 
 int /*<<< orphan*/  FUNC1 (struct ubc_info*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (struct ubc_info*) ; 
 int /*<<< orphan*/  ubc_info_zone ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,struct ubc_info*) ; 

__attribute__((used)) static void
FUNC6(struct ubc_info *uip)
{
	if (FUNC0(uip->ui_ucred)) {
		FUNC2(&uip->ui_ucred);
	}

	if (uip->ui_control != MEMORY_OBJECT_CONTROL_NULL)
		FUNC3(uip->ui_control);
	
	FUNC1(uip);
	FUNC4(uip);

	FUNC5(ubc_info_zone, uip);
	return;
}