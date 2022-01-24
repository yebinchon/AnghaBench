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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int,int,scalar_t__ const) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

int FUNC5(s32 chn, u32 offset, const void *buffer, size_t length)
{
	s32 ret=1;
	const u8 *data = (const u8*)buffer;
	u8 verify;

	FUNC3(chn);
	while (ret && length--)
	{
		if (!FUNC2(chn, 0x5555, 0xAA) || !FUNC2(chn, 0x2AAA, 0x55) ||
		    !FUNC2(chn, 0x5555, 0xA0) || !FUNC2(chn, offset, *data))
			ret = 0;
		else
		{
			FUNC4(20);
			if (!FUNC1(chn, offset++, &verify) || verify != *data++)
				ret = 0;
		}
	}
	FUNC0(chn);

	return ret;
}