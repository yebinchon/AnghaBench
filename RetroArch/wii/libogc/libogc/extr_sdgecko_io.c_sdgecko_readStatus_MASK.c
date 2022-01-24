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
typedef  scalar_t__ s32 ;

/* Variables and functions */
 scalar_t__ CARDIO_ERROR_NOCARD ; 
 scalar_t__ MAX_DRIVE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 

s32 FUNC2(s32 drv_no)
{
	s32 ret;

	if(drv_no<0 || drv_no>=MAX_DRIVE) return CARDIO_ERROR_NOCARD;
	ret = FUNC1(drv_no);
	if(ret!=0) return ret;

	return FUNC0(drv_no);
}