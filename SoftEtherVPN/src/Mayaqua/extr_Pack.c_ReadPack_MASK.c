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
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  PACK ;
typedef  int /*<<< orphan*/  ELEMENT ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ MAX_ELEMENT_NUM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *) ; 

bool FUNC3(BUF *b, PACK *p)
{
	UINT i, num;
	// Validate arguments
	if (b == NULL || p == NULL)
	{
		return false;
	}

	// The number of ELEMENTs
	num = FUNC1(b);
	if (num > MAX_ELEMENT_NUM)
	{
		// Number exceeds
		return false;
	}

	// Read the ELEMENT
	for (i = 0;i < num;i++)
	{
		ELEMENT *e;
		e = FUNC2(b);
		if (FUNC0(p, e) == false)
		{
			// Adding error
			return false;
		}
	}

	return true;
}