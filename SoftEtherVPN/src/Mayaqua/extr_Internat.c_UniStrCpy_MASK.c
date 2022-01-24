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
typedef  int wchar_t ;
typedef  int UINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int*,int) ; 
 int FUNC1 (int*) ; 
 int /*<<< orphan*/  FUNC2 (int*,char*) ; 

UINT FUNC3(wchar_t *dst, UINT size, wchar_t *src)
{
	UINT len;
	// Validate arguments
	if (dst == NULL || src == NULL)
	{
		if (src == NULL && dst != NULL)
		{
			if (size >= sizeof(wchar_t))
			{
				dst[0] = L'\0';
			}
		}
		return 0;
	}
	if (dst == src)
	{
		return FUNC1(src);
	}
	if (size != 0 && size < sizeof(wchar_t))
	{
		return 0;
	}
	if (size == sizeof(wchar_t))
	{
		FUNC2(dst, L"");
		return 0;
	}
	if (size == 0)
	{
		// Ignore the length
		size = 0x3fffffff;
	}

	// Check the length
	len = FUNC1(src);
	if (len <= (size / sizeof(wchar_t) - 1))
	{
		FUNC0(dst, src, (len + 1) * sizeof(wchar_t));
	}
	else
	{
		len = size / sizeof(wchar_t) - 1;
		FUNC0(dst, src, len * sizeof(wchar_t));
		dst[len] = 0;
	}

	return len;
}