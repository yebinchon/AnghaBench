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
struct TYPE_3__ {int flags; } ;
typedef  TYPE_1__ exibus_priv ;

/* Variables and functions */
 size_t EXI_CHANNEL_0 ; 
 size_t EXI_CHANNEL_1 ; 
 size_t EXI_CHANNEL_2 ; 
 int EXI_DEVICE0 ; 
 int EXI_FLAG_ATTACH ; 
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

s32 FUNC5(s32 nChn)
{
	u32 val;
	u32 level;
	exibus_priv *exi = &eximap[nChn];
	FUNC1(level);

	if(!(exi->flags&EXI_FLAG_SELECT)) {
		FUNC2(level);
		return 0;
	}

	exi->flags &= ~EXI_FLAG_SELECT;
	val = _exiReg[nChn*5];
	_exiReg[nChn*5] = (val&0x405);

	if(exi->flags&EXI_FLAG_ATTACH) {
		if(nChn==EXI_CHANNEL_0) FUNC3(FUNC0(IRQ_EXI0_EXT));
		else if(nChn==EXI_CHANNEL_1) FUNC3(FUNC0(IRQ_EXI1_EXT));
	}

	if(nChn!=EXI_CHANNEL_2 && val&EXI_DEVICE0) {
		if(FUNC4(nChn)==0) {
			FUNC2(level);
			return 0;
		}
	}
	FUNC2(level);
	return 1;
}