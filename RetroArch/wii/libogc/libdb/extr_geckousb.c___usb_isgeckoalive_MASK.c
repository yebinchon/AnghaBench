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
typedef  int u16 ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  EXI_DEVICE_0 ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,int*) ; 

__attribute__((used)) static int FUNC3(s32 chn)
{
	s32 ret;
	u16 val;

	if(!FUNC0(chn,EXI_DEVICE_0,NULL)) return 0;

	val = 0x9000;
	ret = FUNC2(chn,&val);
	if(ret==1 && !(val&0x0470)) ret = 0;

	FUNC1(chn);
	return ret;
}