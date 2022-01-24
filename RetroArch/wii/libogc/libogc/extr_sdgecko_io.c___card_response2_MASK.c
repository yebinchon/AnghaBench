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
typedef  size_t u32 ;
typedef  size_t s32 ;

/* Variables and functions */
 size_t CARDIO_ERROR_FATALERROR ; 
 size_t CARDIO_ERROR_NOCARD ; 
 size_t CARDIO_ERROR_READY ; 
 size_t MAX_DRIVE ; 
 size_t FUNC0 (size_t,int*,int) ; 
 int** _ioResponse ; 

__attribute__((used)) static s32 FUNC1(s32 drv_no)
{
	u32 ret;

	if(drv_no<0 || drv_no>=MAX_DRIVE) return CARDIO_ERROR_NOCARD;

	if((ret=FUNC0(drv_no,_ioResponse[drv_no],2))!=0) return ret;
	if(!(_ioResponse[drv_no][0]&0x7c) && !(_ioResponse[drv_no][1]&0x9e)) return CARDIO_ERROR_READY;
	return CARDIO_ERROR_FATALERROR;
}