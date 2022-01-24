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
typedef  int /*<<< orphan*/  X ;
typedef  int /*<<< orphan*/  P12 ;
typedef  int /*<<< orphan*/  K ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

bool FUNC3(P12 *p12)
{
	X *x;
	K *k;
	// Validate arguments
	if (p12 == NULL)
	{
		return false;
	}

	if (FUNC2(p12, &x, &k, NULL) == true)
	{
		FUNC1(x);
		FUNC0(k);
		return false;
	}

	return true;
}