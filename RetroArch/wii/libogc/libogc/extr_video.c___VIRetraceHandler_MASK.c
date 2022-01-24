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
typedef  scalar_t__ u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ VI_EURGB60 ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int* _viReg ; 
 scalar_t__ flushFlag ; 
 scalar_t__ oldDtvStatus ; 
 scalar_t__ oldTvStatus ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  retraceCount ; 
 int /*<<< orphan*/  video_queue ; 

__attribute__((used)) static void FUNC10(u32 nIrq,void *pCtx)
{
#if defined(HW_RVL)
	u8 dtv, tv;
#endif
	u32 ret = 0;
	u32 intr;
	s32 xpos,ypos;

	intr = _viReg[24];
	if(intr&0x8000) {
		_viReg[24] = intr&~0x8000;
		ret |= 0x01;
	}

	intr = _viReg[26];
	if(intr&0x8000) {
		_viReg[26] = intr&~0x8000;
		ret |= 0x02;
	}

	intr = _viReg[28];
	if(intr&0x8000) {
		_viReg[28] = intr&~0x8000;
		ret |= 0x04;
	}

	intr = _viReg[30];
	if(intr&0x8000) {
		_viReg[30] = intr&~0x8000;
		ret |= 0x08;
	}

	intr = _viReg[30];
	if(ret&0x04 || ret&0x08) {
		if(&positionCB!=NULL) {
			FUNC3(&xpos,&ypos);
			FUNC7(xpos,ypos);
		}
	}

	retraceCount++;
	if(&preRetraceCB)
		FUNC9(retraceCount);

	if(flushFlag) {
		if(FUNC5()) {
			flushFlag = 0;
			FUNC1();
		}
	}
#if defined(HW_RVL)
	tv = VIDEO_GetCurrentTvMode();
	dtv = (_viReg[55]&0x01);
	if(dtv!=oldDtvStatus || tv!=oldTvStatus) __VISetYUVSEL(dtv);
	oldDtvStatus = dtv;

	if(tv!=oldTvStatus) {
		if(tv==VI_EURGB60) __VISetFilterEURGB60(1);
		else __VISetFilterEURGB60(0);
	}
	oldTvStatus = tv;
#endif
	if(&postRetraceCB)
		FUNC8(retraceCount);

	FUNC0(video_queue);
}