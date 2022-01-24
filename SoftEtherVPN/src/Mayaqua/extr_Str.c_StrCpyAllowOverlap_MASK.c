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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KS_STRCPY_COUNT ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int FUNC2 (char*) ; 

UINT FUNC3(char *dst, UINT size, char *src)
{
	UINT len;
	// Validate arguments
	if (dst == src)
	{
		return FUNC2(src);
	}
	if (dst == NULL || src == NULL)
	{
		if (src == NULL && dst != NULL)
		{
			if (size >= 1)
			{
				dst[0] = '\0';
			}
		}
		return 0;
	}
	if (size == 1)
	{
		dst[0] = '\0';
		return 0;
	}
	if (size == 0)
	{
		// Ignore the length
		size = 0x7fffffff;
	}

	// Check the length
	len = FUNC2(src);
	if (len <= (size - 1))
	{
		FUNC1(dst, src, len + 1);
	}
	else
	{
		len = size - 1;
		FUNC1(dst, src, len);
		dst[len] = '\0';
	}

	// KS
	FUNC0(KS_STRCPY_COUNT);

	return len;
}