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
typedef  int u32 ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 scalar_t__ CARDIO_ERROR_INTERNAL ; 
 scalar_t__ CARDIO_ERROR_NOCARD ; 
 scalar_t__ MAX_DRIVE ; 
 scalar_t__ PAGE_SIZE512 ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,char*,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,int,int*) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,int,int*) ; 
 scalar_t__* _ioPageSize ; 
 scalar_t__ FUNC10 (scalar_t__) ; 

s32 FUNC11(s32 drv_no,u32 sector_no,u32 num_sectors,const void *buf)
{
	u32 i;
	s32 ret;
	u8 arg[4];
	char *ptr = (char*)buf;

	if(drv_no<0 || drv_no>=MAX_DRIVE) return CARDIO_ERROR_NOCARD;

	ret = FUNC10(drv_no);
	if(ret!=0) return ret;

	if(num_sectors<1) return CARDIO_ERROR_INTERNAL;

	if(PAGE_SIZE512!=_ioPageSize[drv_no]) {
		_ioPageSize[drv_no] = PAGE_SIZE512;
		if((ret=FUNC7(drv_no,_ioPageSize[drv_no]))!=0) return ret;
	}

	// send SET_WRITE_BLK_ERASE_CNT cmd
	arg[0] = (num_sectors>>24)&0xff;
	arg[1] = (num_sectors>>16)&0xff;
	arg[2] = (num_sectors>>8)&0xff;
	arg[3] = num_sectors&0xff;
	if((ret=FUNC5(drv_no))!=0) return ret;
	if((ret=FUNC6(drv_no,0x17,arg))!=0) return ret;
	if((ret=FUNC3(drv_no))!=0) return ret;

	// SDHC support fix
	FUNC9(drv_no,sector_no,arg);

	if((ret=FUNC6(drv_no,0x19,arg))!=0) return ret;
	if((ret=FUNC3(drv_no))!=0) return ret;

	for(i=0;i<num_sectors;i++) {
		if((ret=FUNC1(drv_no,ptr,_ioPageSize[drv_no]))!=0) return ret;
		if((ret=FUNC0(drv_no))!=0) {
			if((ret=FUNC6(drv_no,0x0C,arg))!=0) return ret;
			return FUNC8(drv_no);
		}
		ptr += _ioPageSize[drv_no];
	}

	if((ret=FUNC2(drv_no))!=0) return ret;
	if((ret=FUNC6(drv_no,0x0D,NULL))!=0) return ret;
	return FUNC4(drv_no);
}