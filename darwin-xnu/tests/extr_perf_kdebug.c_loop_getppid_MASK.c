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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  dt_stat_token ;
typedef  int /*<<< orphan*/  dt_stat_time_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static void FUNC4(dt_stat_time_t s) {
	do {
		dt_stat_token start = FUNC1(s);
		for (uint32_t i = 0; i<100; i++) {
			FUNC3();
			FUNC3();
			FUNC3();
			FUNC3();
			FUNC3();
			FUNC3();
			FUNC3();
			FUNC3();
			FUNC3();
			FUNC3();
		}
		FUNC2(s, 1000, start);
	} while (!FUNC0(s));
}