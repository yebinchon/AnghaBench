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
typedef  size_t UINT ;
typedef  int BYTE ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 () ; 
 size_t FUNC2 (int /*<<< orphan*/ *) ; 

UINT FUNC3(BYTE *u, UINT size, wchar_t *s)
{
	UINT i, len, type, wp;
	// Validate arguments
	if (u == NULL || s == NULL)
	{
		return 0;
	}
	if (size == 0)
	{
		size = 0x3fffffff;
	}

	len = FUNC2(s);
	wp = 0;
	for (i = 0;i < len;i++)
	{
		BYTE c1, c2;
		wchar_t c = s[i];

		if (FUNC1())
		{
			if (sizeof(wchar_t) == 2)
			{
				c1 = ((BYTE *)&c)[0];
				c2 = ((BYTE *)&c)[1];
			}
			else
			{
				c1 = ((BYTE *)&c)[2];
				c2 = ((BYTE *)&c)[3];
			}
		}
		else
		{
			c1 = ((BYTE *)&c)[1];
			c2 = ((BYTE *)&c)[0];
		}

		type = FUNC0(s[i]);
		switch (type)
		{
		case 1:
			if (wp < size)
			{
				u[wp++] = c2;
			}
			break;
		case 2:
			if (wp < size)
			{
				u[wp++] = 0xc0 | (((((c1 & 0x07) << 2) & 0x1c)) | (((c2 & 0xc0) >> 6) & 0x03));
			}
			if (wp < size)
			{
				u[wp++] = 0x80 | (c2 & 0x3f);
			}
			break;
		case 3:
			if (wp < size)
			{
				u[wp++] = 0xe0 | (((c1 & 0xf0) >> 4) & 0x0f);
			}
			if (wp < size)
			{
				u[wp++] = 0x80 | (((c1 & 0x0f) << 2) & 0x3c) | (((c2 & 0xc0) >> 6) & 0x03);
			}
			if (wp < size)
			{
				u[wp++] = 0x80 | (c2 & 0x3f);
			}
			break;
		}
	}
	if (wp < size)
	{
		u[wp] = 0;
	}
	return wp;
}