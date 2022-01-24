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
 int /*<<< orphan*/  FUNC0 (int) ; 
 unsigned int FUNC1 () ; 

__attribute__((used)) static void FUNC2(unsigned int until)
{
	unsigned int tval;
	int diff;

	tval = FUNC1();
	diff = (int)until - (int)tval;
	if (diff >= 512 && diff < 100*1024)
		FUNC0(diff);
}