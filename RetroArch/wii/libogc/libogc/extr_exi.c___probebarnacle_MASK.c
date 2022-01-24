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
typedef  scalar_t__ s32 ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ *) ; 
 scalar_t__ EXI_CHANNEL_2 ; 
 scalar_t__ EXI_DEVICE_0 ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,scalar_t__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC4 (scalar_t__,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EXI_READ ; 
 int /*<<< orphan*/  EXI_SPEED1MHZ ; 
 int FUNC5 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  EXI_WRITE ; 

__attribute__((used)) static s32 FUNC8(s32 chn,u32 dev,u32 *rev)
{
	u32 ret,reg;

	if(chn!=EXI_CHANNEL_2 && dev==EXI_DEVICE_0) {
		if(FUNC0(chn,NULL)==0) return 0;
	}

	ret = 0;
	if(FUNC4(chn,dev,NULL)==1) {
		if(FUNC5(chn,dev,EXI_SPEED1MHZ)==1) {
			reg = 0x20011300;
			if(FUNC3(chn,&reg,sizeof(u32),EXI_WRITE,NULL)==0) ret |= 0x0001;
			if(FUNC6(chn)==0) ret |= 0x0002;
			if(FUNC3(chn,rev,sizeof(u32),EXI_READ,NULL)==0) ret |= 0x0004;
			if(FUNC6(chn)==0) ret |= 0x0008;
			if(FUNC1(chn)==0) ret |= 0x0010;

		}
		FUNC7(chn);
	}

	if(chn!=EXI_CHANNEL_2 && dev==EXI_DEVICE_0) FUNC2(chn);

	if(ret) return 0;
	if((*rev+0x00010000)==0xffff) return 0;

	return 1;
}