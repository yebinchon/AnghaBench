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
typedef  int /*<<< orphan*/  sdaux_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  stdin ; 
 int FUNC4 (char*) ; 

int FUNC5()
{
	sdaux_t *a = FUNC2();
	char buf[1024];
	while (FUNC0(buf, 1024, stdin) != 0) {
		if (FUNC4(buf) < 81) continue;
		FUNC3(a, buf);
		//putchar('\n');
	}
	FUNC1(a);
	return 0;
}