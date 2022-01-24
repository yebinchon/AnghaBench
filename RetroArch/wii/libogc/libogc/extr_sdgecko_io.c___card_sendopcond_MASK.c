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
typedef  scalar_t__ s32 ;

/* Variables and functions */
 scalar_t__ CARDIO_ERROR_IOERROR ; 
 scalar_t__ CARDIO_ERROR_NOCARD ; 
 scalar_t__ CARDIO_ERROR_READY ; 
 int CARDIO_OP_IOERR_IDLE ; 
 scalar_t__ MAX_DRIVE ; 
 scalar_t__ TYPE_SDHC ; 
 scalar_t__ FUNC0 (scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,int*,int) ; 
 scalar_t__ FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__* _initType ; 
 int* _ioError ; 
 int /*<<< orphan*/ ** _ioResponse ; 
 scalar_t__ FUNC5 () ; 

__attribute__((used)) static s32 FUNC6(s32 drv_no)
{
	u8 ccmd[5] = {0,0,0,0,0};
	s32 ret;
	s32 startT;

	if(drv_no<0 || drv_no>=MAX_DRIVE) return CARDIO_ERROR_NOCARD;
	ret = 0;
	startT = FUNC5();
	do {
		if(_initType[drv_no]==TYPE_SDHC) {
			FUNC2(drv_no);
			ccmd[0] = 0x29;
			ccmd[1] = 0x40;
		} else
			ccmd[0] = 0x01;

		if((ret=FUNC3(drv_no,ccmd,5))!=0) {
			return ret;
		}
		if((ret=FUNC1(drv_no,_ioResponse[drv_no],1))!=0) return ret;
		if((ret=FUNC4(drv_no,_ioResponse[drv_no][0]))!=0) return ret;
		if(!(_ioError[drv_no]&CARDIO_OP_IOERR_IDLE)) return CARDIO_ERROR_READY;

		ret = FUNC0(drv_no,startT,1500);
	} while(ret==0);

	if(_initType[drv_no]==TYPE_SDHC) {
		FUNC2(drv_no);
		ccmd[0] = 0x29;
		ccmd[1] = 0x40;
	} else
		ccmd[0] = 0x01;

	if((ret=FUNC3(drv_no,ccmd,5))!=0) {
		return ret;
	}
	if((ret=FUNC1(drv_no,_ioResponse[drv_no],1))!=0) return ret;
	if((ret=FUNC4(drv_no,_ioResponse[drv_no][0]))!=0) return ret;
	if(_ioError[drv_no]&CARDIO_OP_IOERR_IDLE) return CARDIO_ERROR_IOERROR;

	return CARDIO_ERROR_READY;
}