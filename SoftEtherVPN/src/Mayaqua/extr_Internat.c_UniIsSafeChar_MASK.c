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
typedef  scalar_t__ wchar_t ;
typedef  size_t UINT ;

/* Variables and functions */
 size_t FUNC0 (scalar_t__*) ; 

bool FUNC1(wchar_t c)
{
	UINT i, len;
	wchar_t *check_str =
		L"ABCDEFGHIJKLMNOPQRSTUVWXYZ"
		L"abcdefghijklmnopqrstuvwxyz"
		L"0123456789"
		L" ()-_#%&.";

	len = FUNC0(check_str);
	for (i = 0;i < len;i++)
	{
		if (c == check_str[i])
		{
			return true;
		}
	}
	return false;
}