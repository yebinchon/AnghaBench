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
typedef  int UINT ;
typedef  int /*<<< orphan*/  IP ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 

void FUNC4(IP *dst, IP *a, IP *b)
{
	UINT i;
	// Validate arguments
	if (dst == NULL || a == NULL || b == NULL || FUNC1(a) == false || FUNC1(b) == false)
	{
		FUNC3(dst, sizeof(IP));
		return;
	}

	i = FUNC0(a) & FUNC0(b);

	FUNC2(dst, i);
}