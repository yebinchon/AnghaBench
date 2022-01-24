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
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 

bool FUNC3(BUF *b, char *str)
{
	UINT len;
	// Validate arguments
	if (b == NULL || str == NULL)
	{
		return false;
	}

	// String length
	len = FUNC0(str);
	if (FUNC2(b, len + 1) == false)
	{
		return false;
	}

	// String body
	FUNC1(b, str, len);

	return true;
}