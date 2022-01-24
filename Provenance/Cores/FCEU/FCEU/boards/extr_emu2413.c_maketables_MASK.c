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
typedef  scalar_t__ uint32 ;

/* Variables and functions */
 scalar_t__ clk ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ rate ; 

__attribute__((used)) static void FUNC8(uint32 c, uint32 r) {
	if (c != clk) {
		clk = c;
		FUNC4();
		FUNC2();
		FUNC3();
		FUNC1();
		FUNC7();
		FUNC5();
		FUNC6();
		//makeDefaultPatch ();
	}

	if (r != rate) {
		rate = r;
		FUNC0();
	}
}