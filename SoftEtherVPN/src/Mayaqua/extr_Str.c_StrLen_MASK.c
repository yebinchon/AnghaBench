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
typedef  int /*<<< orphan*/  UINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KS_STRLEN_COUNT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

UINT FUNC2(char *str)
{
	// Validate arguments
	if (str == NULL)
	{
		return 0;
	}

	// KS
	FUNC0(KS_STRLEN_COUNT);

	return (UINT)FUNC1(str);
}