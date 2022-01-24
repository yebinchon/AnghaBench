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
typedef  int u8 ;
typedef  size_t s32 ;

/* Variables and functions */
 size_t CARDIO_ERROR_NOCARD ; 
 size_t MAX_DRIVE ; 
 size_t FUNC0 (size_t,int /*<<< orphan*/ *,int) ; 
 size_t FUNC1 (size_t,int*,int) ; 
 size_t FUNC2 (size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** _ioResponse ; 

__attribute__((used)) static s32 FUNC3(s32 drv_no)
{
	s32 ret;
	u8 ccmd[5] = {0,0,0,0,0};

	if(drv_no<0 || drv_no>=MAX_DRIVE) return CARDIO_ERROR_NOCARD;

	ccmd[0] = 0x08;
	ccmd[3] = 0x01;
	ccmd[4] = 0xAA;
	if((ret=FUNC1(drv_no,ccmd,5))!=0){
		return ret;
	}
	if((ret=FUNC0(drv_no,_ioResponse[drv_no],5))!=0) return ret;
	ret = FUNC2(drv_no,_ioResponse[drv_no][0]);

	return ret;
}