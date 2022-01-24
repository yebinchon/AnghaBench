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
typedef  size_t s32 ;

/* Variables and functions */
 size_t CARDIO_ERROR_NOCARD ; 
 size_t CARDIO_ERROR_READY ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 scalar_t__ FALSE ; 
 size_t MAX_DRIVE ; 
 scalar_t__ NOT_INITIALIZED ; 
 scalar_t__ TRUE ; 
 scalar_t__ FUNC1 (size_t) ; 
 size_t FUNC2 (size_t) ; 
 size_t FUNC3 (size_t) ; 
 size_t FUNC4 (size_t,int,int /*<<< orphan*/ *) ; 
 scalar_t__* _ioCardInserted ; 
 scalar_t__* _ioFlag ; 
 size_t FUNC5 (size_t) ; 

s32 FUNC6(s32 drv_no)
{
	s32 ret;

	if(drv_no<0 || drv_no>=MAX_DRIVE) return CARDIO_ERROR_NOCARD;

	if(FUNC1(drv_no)==TRUE && _ioFlag[drv_no]!=NOT_INITIALIZED) {
		if((ret=FUNC3(drv_no))!=0) goto exit;
		if((ret=FUNC4(drv_no,0x2a,NULL))!=0) goto exit;
		ret = FUNC2(drv_no);
	}
	_ioFlag[drv_no] = NOT_INITIALIZED;

exit:
	if(_ioCardInserted[drv_no]==TRUE) {
		_ioCardInserted[drv_no] = FALSE;
		FUNC0(drv_no);
	}
	if(&_ioRetryCB)
		return FUNC5(drv_no);

	return CARDIO_ERROR_READY;
}