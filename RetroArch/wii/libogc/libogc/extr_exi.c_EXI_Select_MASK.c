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
struct TYPE_3__ {int flags; size_t lockeddev; } ;
typedef  TYPE_1__ exibus_priv ;

/* Variables and functions */
 size_t EXI_CHANNEL_0 ; 
 size_t EXI_CHANNEL_1 ; 
 size_t EXI_CHANNEL_2 ; 
 size_t EXI_DEVICE_0 ; 
 int EXI_FLAG_ATTACH ; 
 int EXI_FLAG_LOCKED ; 
 int EXI_FLAG_SELECT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_EXI0_EXT ; 
 int /*<<< orphan*/  IRQ_EXI1_EXT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (size_t) ; 
 int* _exiReg ; 
 TYPE_1__* eximap ; 

s32 FUNC5(s32 nChn,s32 nDev,s32 nFrq)
{
	u32 val;
	u32 level;
	exibus_priv *exi = &eximap[nChn];
	FUNC1(level);

	if(exi->flags&EXI_FLAG_SELECT) {
		FUNC2(level);
		return 0;
	}

	if(nChn!=EXI_CHANNEL_2) {
		if(nDev==EXI_DEVICE_0 && !(exi->flags&EXI_FLAG_ATTACH)) {
			if(FUNC4(nChn)==0) {
				FUNC2(level);
				return 0;
			}
		}
		if(!(exi->flags&EXI_FLAG_LOCKED) || exi->lockeddev!=nDev) {
			FUNC2(level);
			return 0;
		}
	}

	exi->flags |= EXI_FLAG_SELECT;
	val = _exiReg[nChn*5];
	val = (val&0x405)|(0x80<<nDev)|(nFrq<<4);
	_exiReg[nChn*5] = val;

	if(exi->flags&EXI_FLAG_ATTACH) {
		if(nChn==EXI_CHANNEL_0) FUNC3(FUNC0(IRQ_EXI0_EXT));
		else if(nChn==EXI_CHANNEL_1) FUNC3(FUNC0(IRQ_EXI1_EXT));
	}

	FUNC2(level);
	return 1;
}