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
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  IRR_BASE ; 
 int /*<<< orphan*/  ISR_BASE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TRUE ; 

boolean_t
FUNC1(void)
{
	int		i;

	for (i = 0; i < 8; i += 1) {
		if ((FUNC0(IRR_BASE, i) != 0) ||
		    (FUNC0(ISR_BASE, i) != 0))
			return (TRUE);
	}

	return (FALSE);
}