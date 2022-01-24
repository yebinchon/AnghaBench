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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

FUNC1() {
	int i;

	FUNC0("g:\n");
	for (i = 1; i <= 10; i++)
		switch (i) {
		case 1: case 2: FUNC0("1 %d\n", i); break;
		case 3: case 4: case 5: FUNC0("2 %d\n", i); break;
		case 6: case 7: case 8: FUNC0("3 %d\n", i);
		default:
			FUNC0("d %d\n", i); break;
		case 1001: case 1002: case 1003: case 1004:
			FUNC0("5 %d\n", i); break;
		case 3001: case 3002: case 3003: case 3004:
			FUNC0("6 %d\n", i); break;
	}
}