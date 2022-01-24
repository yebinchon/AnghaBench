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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,scalar_t__) ; 
 scalar_t__ FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,scalar_t__,char*) ; 
 scalar_t__ FUNC3 (char*) ; 

bool FUNC4(char *dst, UINT dst_size, char *str, char *key)
{
	if (dst == NULL || str == NULL)
	{
		FUNC0(dst, dst_size);
		return false;
	}

	FUNC2(dst, dst_size, str);

	if (FUNC1(str, key))
	{
		UINT src_len = FUNC3(str);
		UINT key_len = FUNC3(key);

		if (src_len >= key_len)
		{
			dst[src_len - key_len] = 0;
		}

		return true;
	}

	return false;
}