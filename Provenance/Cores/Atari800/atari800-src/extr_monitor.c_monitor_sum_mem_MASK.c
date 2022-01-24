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
typedef  int UWORD ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 scalar_t__ FUNC1 (int*,int*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static void FUNC3(void)
{
	UWORD addr1;
	UWORD addr2;
	if (FUNC1(&addr1, &addr2)) {
		int sum = 0;
		int i;
		for (i = addr1; i <= addr2; i++)
			sum += FUNC0(i);
		FUNC2("SUM: %X\n", sum);
	}
}