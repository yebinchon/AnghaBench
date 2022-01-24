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
 scalar_t__ CARDIO_ERROR_IOTIMEOUT ; 
 scalar_t__ CARDIO_ERROR_NOCARD ; 
 scalar_t__ CARDIO_ERROR_READY ; 
 int /*<<< orphan*/  EXI_DEVICE_0 ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,int*,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EXI_READWRITE ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ MAX_DRIVE ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  _ioCardFreq ; 
 int _ioClrFlag ; 
 scalar_t__ FUNC6 () ; 

__attribute__((used)) static s32 FUNC7(s32 drv_no,void *buf,s32 len)
{
	u8 *ptr;
	s32 startT,ret;

	if(drv_no<0 || drv_no>=MAX_DRIVE) return CARDIO_ERROR_NOCARD;

	ret = CARDIO_ERROR_READY;
	ptr = buf;
	*ptr = _ioClrFlag;

	FUNC5(drv_no);

	if(FUNC2(drv_no,EXI_DEVICE_0,_ioCardFreq)==0) {
		FUNC3(drv_no);
		return CARDIO_ERROR_NOCARD;
	}

	if(FUNC1(drv_no,ptr,1,EXI_READWRITE)==0) {
		FUNC0(drv_no);
		FUNC3(drv_no);
		return CARDIO_ERROR_IOERROR;
	}

	startT = FUNC6();
	while(*ptr&0x80) {
		*ptr = _ioClrFlag;
		if(FUNC1(drv_no,ptr,1,EXI_READWRITE)==0) {
			FUNC0(drv_no);
			FUNC3(drv_no);
			return CARDIO_ERROR_IOERROR;
		}
		if(!(*ptr&0x80)) break;
		if(FUNC4(drv_no,startT,500)!=0) {
			*ptr = _ioClrFlag;
			if(FUNC1(drv_no,ptr,1,EXI_READWRITE)==0) {
				FUNC0(drv_no);
				FUNC3(drv_no);
				return CARDIO_ERROR_IOERROR;
			}
			if(*ptr&0x80) ret = CARDIO_ERROR_IOTIMEOUT;
			break;
		}
	}
	if(len>1 && ret==CARDIO_ERROR_READY) {
		*(++ptr) = _ioClrFlag;
		if(FUNC1(drv_no,ptr,len-1,EXI_READWRITE)==0) ret = CARDIO_ERROR_IOERROR;
	}

	FUNC0(drv_no);
	FUNC3(drv_no);
	return ret;
}