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
	int i, x = 0, y;

	FUNC0("f:\n");
	for (i = 0; i <= 20; i++) {
		y = i;
		switch (i) {
		case 1: x = i; break;
		case 2: x = i; break;
		case 7: x = i; break;
		case 8: x = i; break;
		case 9: x = i; break;
		case 16: x = i; break;
		case 17: x = i; break;
		case 18: x = i; break;
		case 19: x = i; break;
		case 20: x = i; break;
		}
		FUNC0("x = %d\n", x);
	}
}