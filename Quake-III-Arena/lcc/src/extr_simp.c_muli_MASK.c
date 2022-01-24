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

__attribute__((used)) static int FUNC1(long x, long y, long min, long max, int needconst) {
	int cond = x > -1 && x <= 1 || y > -1 && y <= 1
	|| x < 0 && y < 0 && -x <= max/-y
	|| x < 0 && y > 0 &&  x >= min/y
	|| x > 0 && y < 0 &&  y >= min/x
	|| x > 0 && y > 0 &&  x <= max/y;
	if (!cond && needconst) {
		FUNC0("overflow in constant expression\n");
		cond = 1;
	}
	return cond;


}