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
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ ** _ioResponse ; 

__attribute__((used)) static s32 FUNC3(s32 drv_no)
{
	s32 ret;

	if(drv_no<0 || drv_no>=MAX_DRIVE) return CARDIO_ERROR_NOCARD;
	ret = 0;
	if((ret=FUNC1(drv_no))!=0) {
		return ret;
	}

	if((ret=FUNC0(drv_no,_ioResponse[drv_no],1))!=0) return ret;
	return FUNC2(drv_no,_ioResponse[drv_no][0]);
}