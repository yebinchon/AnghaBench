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
 int /*<<< orphan*/  MAX_CALLSTACK_FRAMES ; 
 unsigned int actionc ; 
 int /*<<< orphan*/  FUNC0 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int,int /*<<< orphan*/ ) ; 

void
FUNC5(void)
{
	for (unsigned int i = 0; i < actionc; i++) {
		FUNC2(i + 1, 0);
		FUNC4(i + 1, 0);
		FUNC0(i + 1, -1);
		FUNC3(i + 1, MAX_CALLSTACK_FRAMES);
		FUNC1(i + 1, MAX_CALLSTACK_FRAMES);
	}
}