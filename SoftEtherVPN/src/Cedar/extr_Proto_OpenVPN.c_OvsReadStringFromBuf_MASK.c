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
typedef  int USHORT ;
typedef  int UINT ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*) ; 

bool FUNC3(BUF *b, char *str, UINT str_size)
{
	USHORT us;
	// Validate arguments
	if (b == NULL || str == NULL)
	{
		return false;
	}

	if (FUNC1(b, &us, sizeof(USHORT)) != sizeof(USHORT))
	{
		return false;
	}

	us = FUNC0(us);

	if (us == 0)
	{
		FUNC2(str, str_size, "");
		return true;
	}

	if (us > str_size)
	{
		return false;
	}

	if (FUNC1(b, str, us) != us)
	{
		return false;
	}

	if (str[us - 1] != 0)
	{
		return false;
	}

	return true;
}