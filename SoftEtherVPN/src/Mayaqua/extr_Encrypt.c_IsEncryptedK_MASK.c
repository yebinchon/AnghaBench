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
typedef  int /*<<< orphan*/  K ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

bool FUNC3(BUF *b, bool private_key)
{
	K *k;
	// Validate arguments
	if (b == NULL)
	{
		return false;
	}
	if (FUNC2(b) == false)
	{
		return false;
	}

	k = FUNC0(b, private_key, true, NULL);
	if (k != NULL)
	{
		FUNC1(k);
		return false;
	}

	return true;
}