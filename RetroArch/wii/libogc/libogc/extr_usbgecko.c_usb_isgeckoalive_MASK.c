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
typedef  scalar_t__ u32 ;
typedef  int u16 ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  EXI_DEVICE_0 ; 
 scalar_t__ FUNC0 (int,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,int*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

int FUNC4(s32 chn)
{
	u32 id = 0;
	s32 ret;
	u16 val;

	if (FUNC0(chn, EXI_DEVICE_0, &id) == 0)
		return 0;

	if (id != 0)
		return 0;

	FUNC3(chn);

	val = 0x9000;
	ret = FUNC2(chn,&val);
	if(ret==1 && !(val&0x0470)) ret = 0;

	FUNC1(chn);

	return ret;
}