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
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static void FUNC1(int mode)
{
	switch (mode) {
	case 0:
		FUNC0("Joystick 0");
		break;
	case 1:
		FUNC0("Joystick 1");
		break;
	case 2:
		FUNC0("Joystick 2");
		break;
	case 3:
		FUNC0("Joystick 3");
		break;
	default:
		FUNC0("not available");
		break;
	}
}