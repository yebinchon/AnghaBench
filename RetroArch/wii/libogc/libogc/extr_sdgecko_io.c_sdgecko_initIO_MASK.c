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
typedef  int u32 ;
typedef  size_t s32 ;

/* Variables and functions */
 int /*<<< orphan*/  BYTE_ADDRESSING ; 
 size_t CARDIO_ERROR_IOERROR ; 
 size_t CARDIO_ERROR_NOCARD ; 
 size_t CARDIO_ERROR_READY ; 
 int /*<<< orphan*/  EXI_DEVICE_0 ; 
 int /*<<< orphan*/  FUNC0 (size_t,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  EXI_SPEED16MHZ ; 
 int /*<<< orphan*/  INITIALIZED ; 
 int /*<<< orphan*/  INITIALIZING ; 
 size_t MAX_DRIVE ; 
 int /*<<< orphan*/  SECTOR_ADDRESSING ; 
 scalar_t__ TRUE ; 
 scalar_t__ TYPE_SD ; 
 scalar_t__ TYPE_SDHC ; 
 int FUNC1 (size_t) ; 
 scalar_t__ FUNC2 (size_t) ; 
 scalar_t__ FUNC3 (size_t) ; 
 scalar_t__ FUNC4 (size_t) ; 
 int /*<<< orphan*/  __card_retrycb ; 
 scalar_t__ FUNC5 (size_t) ; 
 scalar_t__ FUNC6 (size_t) ; 
 scalar_t__ FUNC7 (size_t) ; 
 scalar_t__ FUNC8 (size_t) ; 
 scalar_t__ FUNC9 (size_t,int) ; 
 scalar_t__ FUNC10 (size_t) ; 
 scalar_t__* _initType ; 
 int /*<<< orphan*/ * _ioAddressingType ; 
 int /*<<< orphan*/  _ioCardFreq ; 
 scalar_t__* _ioCardInserted ; 
 int /*<<< orphan*/ * _ioFlag ; 
 int* _ioPageSize ; 
 int** _ioResponse ; 
 int /*<<< orphan*/  _ioRetryCB ; 
 int _ioRetryCnt ; 
 int _ioWPFlag ; 
 size_t FUNC11 (size_t) ; 

s32 FUNC12(s32 drv_no)
{
	if(drv_no<0 || drv_no>=MAX_DRIVE) return CARDIO_ERROR_NOCARD;

	u32 id = 0;
	FUNC0(drv_no,EXI_DEVICE_0,&id);
	if ( id != -1 ) return CARDIO_ERROR_NOCARD;

	if(_ioRetryCnt>5) {
		_ioRetryCnt = 0;
		return CARDIO_ERROR_IOERROR;
	}

	_ioCardInserted[drv_no] = FUNC2(drv_no);

	if(_ioCardInserted[drv_no]==TRUE) {
		_ioWPFlag = 0;
		_ioCardFreq = EXI_SPEED16MHZ;
		_initType[drv_no] = TYPE_SD;
		_ioFlag[drv_no] = INITIALIZING;
		_ioAddressingType[drv_no] = BYTE_ADDRESSING;
		if(FUNC10(drv_no)!=0) {
			_ioWPFlag = 1;
			if(FUNC10(drv_no)!=0) goto exit;
		}

		if(FUNC7(drv_no)!=0) goto exit;
		if((_ioResponse[drv_no][3]==1) && (_ioResponse[drv_no][4]==0xAA)) _initType[drv_no] = TYPE_SDHC;

		if(FUNC8(drv_no)!=0) goto exit;
		if(FUNC4(drv_no)!=0) goto exit;
		if(FUNC3(drv_no)!=0) goto exit;

		if(_initType[drv_no]==TYPE_SDHC) {
			if(FUNC6(drv_no)!=0) goto exit;
			if(_ioResponse[drv_no][1]&0x40) _ioAddressingType[drv_no] = SECTOR_ADDRESSING;
		}

		_ioPageSize[drv_no] = 1<<FUNC1(drv_no);
		if(FUNC9(drv_no,_ioPageSize[drv_no])!=0) goto exit;

		if(FUNC5(drv_no)!=0) goto exit;

		_ioRetryCnt = 0;
		_ioFlag[drv_no] = INITIALIZED;
		return CARDIO_ERROR_READY;
exit:
		_ioRetryCB = __card_retrycb;
		return FUNC11(drv_no);
	}
	return CARDIO_ERROR_NOCARD;
}