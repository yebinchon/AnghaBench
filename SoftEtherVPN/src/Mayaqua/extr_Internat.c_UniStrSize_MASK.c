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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int UINT ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 

UINT FUNC1(wchar_t *str)
{
	// Validate arguments
	if (str == NULL)
	{
		return 0;
	}

	return (FUNC0(str) + 1) * sizeof(wchar_t);
}