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
typedef  int /*<<< orphan*/  tmp ;
typedef  size_t UINT ;

/* Variables and functions */
 int MAX_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int*,size_t,int*) ; 
 scalar_t__ FUNC1 (int*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int*,size_t,int*) ; 
 int /*<<< orphan*/  FUNC3 (int*,size_t,...) ; 
 int FUNC4 (int*) ; 

void FUNC5(wchar_t *dst, UINT size, wchar_t *filepath)
{
	wchar_t tmp[MAX_SIZE];
	UINT wp;
	UINT i;
	UINT len;
	// Validate arguments
	if (dst == NULL || filepath == NULL)
	{
		return;
	}

	FUNC3(tmp, sizeof(tmp), filepath);
	if (FUNC1(tmp, L"\\") || FUNC1(tmp, L"/"))
	{
		tmp[FUNC4(tmp) - 1] = 0;
	}

	len = FUNC4(tmp);

	FUNC3(dst, size, L"");

	wp = 0;

	for (i = 0;i < len;i++)
	{
		wchar_t c = tmp[i];
		if (c == L'/' || c == L'\\')
		{
			tmp[wp++] = 0;
			wp = 0;
			FUNC2(dst, size, tmp);
			tmp[wp++] = c;
		}
		else
		{
			tmp[wp++] = c;
		}
	}

	if (FUNC4(dst) == 0)
	{
		FUNC3(dst, size, L"/");
	}

	FUNC0(dst, size, dst);
}