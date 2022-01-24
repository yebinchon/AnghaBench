#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  size_t s32 ;
struct TYPE_3__ {int flags; size_t lockeddev; int /*<<< orphan*/  exi_idtime; } ;
typedef  TYPE_1__ exibus_priv ;

/* Variables and functions */
 size_t EXI_CHANNEL_0 ; 
 size_t EXI_CHANNEL_1 ; 
 size_t EXI_CHANNEL_2 ; 
 size_t EXI_DEVICE_0 ; 
 int EXI_FLAG_ATTACH ; 
 int EXI_FLAG_LOCKED ; 
 int EXI_FLAG_SELECT ; 
 size_t FUNC0 (size_t,size_t,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_EXI0_EXT ; 
 int /*<<< orphan*/  IRQ_EXI1_EXT ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 size_t FUNC5 (size_t) ; 
 int* _exiReg ; 
 TYPE_1__* eximap ; 

s32 FUNC6(s32 nChn,s32 nDev,s32 nFrq)
{
	u32 val,id;
	s32 ret;
	u32 level;
	exibus_priv *exi = &eximap[nChn];
	FUNC2(level);

	if(exi->flags&EXI_FLAG_SELECT) {
		FUNC3(level);
		return 0;
	}

	if(nChn!=EXI_CHANNEL_2) {
		if(nDev==EXI_DEVICE_0 && !(exi->flags&EXI_FLAG_ATTACH)) {
			if((ret=FUNC5(nChn))==1) {
				if(!exi->exi_idtime) ret = FUNC0(nChn,EXI_DEVICE_0,&id);
			}
			if(ret==0) {
				FUNC3(level);
				return 0;
			}
		}
		if(!(exi->flags&EXI_FLAG_LOCKED) || exi->lockeddev!=nDev) {
			FUNC3(level);
			return 0;
		}
	}

	exi->flags |= EXI_FLAG_SELECT;
	val = _exiReg[nChn*5];
	val = (val&0x405)|(nFrq<<4);
	_exiReg[nChn*5] = val;

	if(exi->flags&EXI_FLAG_ATTACH) {
		if(nChn==EXI_CHANNEL_0) FUNC4(FUNC1(IRQ_EXI0_EXT));
		else if(nChn==EXI_CHANNEL_1) FUNC4(FUNC1(IRQ_EXI1_EXT));
	}

	FUNC3(level);
	return 1;
}