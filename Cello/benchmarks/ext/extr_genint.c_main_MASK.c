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
 int FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

int FUNC4(int argc, char *argv[])
{
	int i, n = 500000; // by default, output 5 million integers
	if (argc > 1) n = FUNC0(argv[1]);
	FUNC3(11);
	for (i = 0; i < n; ++i)
		FUNC1("%u\n", (unsigned)((FUNC2() % (n/4))  * 271828183u)); // 4 times in average
	return 0;
}