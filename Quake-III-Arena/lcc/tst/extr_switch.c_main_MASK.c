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
 int FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,char,int) ; 

FUNC7()
{
	int i; char *s;

	for (s = "bfnrtvx"; *s; s++)
		FUNC6("%c = 0x%x\n", *s, FUNC0(*s));
	FUNC2();
	FUNC3();
	FUNC4();
	for (i = 0x1000000; i&0x7000000; i += 0x1000000)
		FUNC1(i);
	FUNC5();
	return 0;
}