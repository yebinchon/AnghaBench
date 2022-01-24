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
typedef  int /*<<< orphan*/  LIST ;
typedef  int /*<<< orphan*/  AC ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 

void FUNC2(LIST *o, UINT id, AC *ac)
{
	// Validate arguments
	if (o == NULL || id == 0 || ac == NULL)
	{
		return;
	}

	if (FUNC1(o, id))
	{
		FUNC0(o, ac);
	}
}