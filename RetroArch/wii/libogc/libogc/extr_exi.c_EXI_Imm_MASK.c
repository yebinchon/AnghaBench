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
typedef  int u8 ;
typedef  size_t u32 ;
typedef  size_t s32 ;
struct TYPE_3__ {int flags; size_t imm_len; void* imm_buff; scalar_t__ CallbackTC; } ;
typedef  TYPE_1__ exibus_priv ;
typedef  scalar_t__ EXICallback ;

/* Variables and functions */
 int EXI_FLAG_DMA ; 
 int EXI_FLAG_IMM ; 
 int EXI_FLAG_SELECT ; 
 size_t EXI_READ ; 
 size_t EXI_WRITE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ IRQ_EXI0_TC ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (size_t,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 size_t* _exiReg ; 
 TYPE_1__* eximap ; 

s32 FUNC5(s32 nChn,void *pData,u32 nLen,u32 nMode,EXICallback tc_cb)
{
	u32 level;
	u32 value,i;
	exibus_priv *exi = &eximap[nChn];
	FUNC1(level);

	if(exi->flags&(EXI_FLAG_DMA|EXI_FLAG_IMM) || !(exi->flags&EXI_FLAG_SELECT)) {
		FUNC2(level);
		return 0;
	}

	exi->CallbackTC = tc_cb;
	if(tc_cb) {
		FUNC4(nChn,0,1,0);
		FUNC3(FUNC0((IRQ_EXI0_TC+(nChn*3))));
	}
	exi->flags |= EXI_FLAG_IMM;

	exi->imm_buff = pData;
	exi->imm_len = nLen;
	if(nMode!=EXI_READ) {
		for(i=0,value=0;i<nLen;i++) value |= (((u8*)pData)[i])<<((3-i)*8);
		_exiReg[nChn*5+4] = value;
	}
	if(nMode==EXI_WRITE) exi->imm_len = 0;

	_exiReg[nChn*5+3] = (((nLen-1)&0x03)<<4)|((nMode&0x03)<<2)|0x01;

	FUNC2(level);
	return 1;
}