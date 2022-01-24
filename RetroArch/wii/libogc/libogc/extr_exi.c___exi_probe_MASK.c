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
typedef  scalar_t__ u64 ;
typedef  int u32 ;
typedef  size_t s32 ;
struct TYPE_3__ {int flags; scalar_t__ exi_idtime; } ;
typedef  TYPE_1__ exibus_priv ;

/* Variables and functions */
 int EXI_EXT_BIT ; 
 int EXI_EXT_IRQ ; 
 int EXI_FLAG_ATTACH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int* _exiReg ; 
 int FUNC3 (scalar_t__,scalar_t__) ; 
 TYPE_1__* eximap ; 
 scalar_t__ FUNC4 () ; 
 scalar_t__* last_exi_idtime ; 

__attribute__((used)) static s32 FUNC5(s32 nChn)
{
	u64 time;
	s32 ret = 1;
	u32 level;
	u32 val;
	exibus_priv *exi = &eximap[nChn];
	FUNC0(level);
	val = _exiReg[nChn*5];
	if(!(exi->flags&EXI_FLAG_ATTACH)) {
		if(val&EXI_EXT_IRQ) {
			FUNC2(nChn,0,0,1);
			exi->exi_idtime = 0;
			last_exi_idtime[nChn] = 0;
		}
		if(_exiReg[nChn*5]&EXI_EXT_BIT) {
			time = FUNC4();
			if(last_exi_idtime[nChn]==0) last_exi_idtime[nChn] = time;
			if((val=FUNC3(last_exi_idtime[nChn],time)+10)<30) ret = 0;
			else ret = 1;
			FUNC1(level);
			return ret;
		} else {
			exi->exi_idtime = 0;
			last_exi_idtime[nChn] = 0;
			FUNC1(level);
			return 0;
		}
	}

	if(!(_exiReg[nChn*5]&EXI_EXT_BIT) || (_exiReg[nChn*5]&EXI_EXT_IRQ)) {
		exi->exi_idtime = 0;
		last_exi_idtime[nChn] = 0;
		ret = 0;
	}
	FUNC1(level);
	return ret;
}