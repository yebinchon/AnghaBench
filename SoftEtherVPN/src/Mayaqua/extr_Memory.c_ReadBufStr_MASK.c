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
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 

bool FUNC3(BUF *b, char *str, UINT size)
{
	UINT len;
	UINT read_size;
	// Validate arguments
	if (b == NULL || str == NULL || size == 0)
	{
		return false;
	}

	// Read the length of the string
	len = FUNC2(b);
	if (len == 0)
	{
		return false;
	}
	len--;
	if (len <= (size - 1))
	{
		size = len + 1;
	}

	read_size = FUNC0(len, (size - 1));

	// Read the string body
	if (FUNC1(b, str, read_size) != read_size)
	{
		return false;
	}
	if (read_size < len)
	{
		FUNC1(b, NULL, len - read_size);
	}
	str[read_size] = 0;

	return true;
}