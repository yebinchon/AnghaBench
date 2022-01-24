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
struct TYPE_3__ {size_t EXCPT_Number; scalar_t__ SRR0; scalar_t__* GPR; scalar_t__ LR; int /*<<< orphan*/  MSR; int /*<<< orphan*/  SRR1; } ;
typedef  TYPE_1__ frame_context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 size_t EX_DSI ; 
 size_t EX_FP ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (void*,void*,void*) ; 
 int /*<<< orphan*/ * exception_name ; 
 int /*<<< orphan*/  exception_xfb ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 () ; 

void FUNC8(frame_context *pCtx)
{
	FUNC1();
	FUNC2(exception_xfb);
	FUNC3(exception_xfb,20,20,640,574,1280);
	FUNC0(1, true);

	FUNC5("\n\n\n\tException (%s) occurred!\n", exception_name[pCtx->EXCPT_Number]);

	FUNC5("\tGPR00 %08X GPR08 %08X GPR16 %08X GPR24 %08X\n",pCtx->GPR[0], pCtx->GPR[8], pCtx->GPR[16], pCtx->GPR[24]);
	FUNC5("\tGPR01 %08X GPR09 %08X GPR17 %08X GPR25 %08X\n",pCtx->GPR[1], pCtx->GPR[9], pCtx->GPR[17], pCtx->GPR[25]);
	FUNC5("\tGPR02 %08X GPR10 %08X GPR18 %08X GPR26 %08X\n",pCtx->GPR[2], pCtx->GPR[10], pCtx->GPR[18], pCtx->GPR[26]);
	FUNC5("\tGPR03 %08X GPR11 %08X GPR19 %08X GPR27 %08X\n",pCtx->GPR[3], pCtx->GPR[11], pCtx->GPR[19], pCtx->GPR[27]);
	FUNC5("\tGPR04 %08X GPR12 %08X GPR20 %08X GPR28 %08X\n",pCtx->GPR[4], pCtx->GPR[12], pCtx->GPR[20], pCtx->GPR[28]);
	FUNC5("\tGPR05 %08X GPR13 %08X GPR21 %08X GPR29 %08X\n",pCtx->GPR[5], pCtx->GPR[13], pCtx->GPR[21], pCtx->GPR[29]);
	FUNC5("\tGPR06 %08X GPR14 %08X GPR22 %08X GPR30 %08X\n",pCtx->GPR[6], pCtx->GPR[14], pCtx->GPR[22], pCtx->GPR[30]);
	FUNC5("\tGPR07 %08X GPR15 %08X GPR23 %08X GPR31 %08X\n",pCtx->GPR[7], pCtx->GPR[15], pCtx->GPR[23], pCtx->GPR[31]);
	FUNC5("\tLR %08X SRR0 %08x SRR1 %08x MSR %08x\n", pCtx->LR, pCtx->SRR0, pCtx->SRR1,pCtx->MSR);
	FUNC5("\tDAR %08X DSISR %08X\n", FUNC6(19), FUNC6(18));

	FUNC4((void*)pCtx->SRR0,(void*)pCtx->LR,(void*)pCtx->GPR[1]);

	if((pCtx->EXCPT_Number==EX_DSI) || (pCtx->EXCPT_Number==EX_FP)) {
		u32 i;
		u32 *pAdd = (u32*)pCtx->SRR0;
		FUNC5("\n\n\tCODE DUMP:\n");
		for (i=0; i<12; i+=4)
			FUNC5("\t%p:  %08X %08X %08X %08X\n",
			&(pAdd[i]),pAdd[i], pAdd[i+1], pAdd[i+2], pAdd[i+3]);
	}

	FUNC7();
}