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
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int EXI_FLAG_ATTACH ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int FALSE ; 
 scalar_t__ MAX_DRIVE ; 
 int TRUE ; 
 int /*<<< orphan*/  __card_exthandler ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static bool FUNC4(s32 drv_no)
{
	s32 ret;

	if(drv_no<0 || drv_no>=MAX_DRIVE) return FALSE;
	while((ret=FUNC2(drv_no))==0);
	if(ret!=1) return FALSE;

	if(!(FUNC1(drv_no)&EXI_FLAG_ATTACH)) {
		if(FUNC0(drv_no,__card_exthandler)==0) return FALSE;
		FUNC3(drv_no);
	}
	return TRUE;
}