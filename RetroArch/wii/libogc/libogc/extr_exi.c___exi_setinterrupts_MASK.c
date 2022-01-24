#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  size_t s32 ;
struct TYPE_4__ {int flags; scalar_t__ CallbackEXI; } ;
typedef  TYPE_1__ exibus_priv ;

/* Variables and functions */
 size_t EXI_CHANNEL_0 ; 
 size_t EXI_CHANNEL_1 ; 
 size_t EXI_CHANNEL_2 ; 
 int EXI_FLAG_LOCKED ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_EXI0_EXI ; 
 int /*<<< orphan*/  IRQ_EXI1_EXI ; 
 int /*<<< orphan*/  IRQ_EXI2_EXI ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRQ_PI_DEBUG ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 TYPE_1__* eximap ; 

__attribute__((used)) static __inline__ void FUNC4(s32 nChn,exibus_priv *exi)
{
	exibus_priv *pexi = &eximap[EXI_CHANNEL_2];
	if(nChn==EXI_CHANNEL_0) {
		FUNC2((FUNC0(IRQ_EXI0_EXI)|FUNC0(IRQ_EXI2_EXI)));
		if(!(exi->flags&EXI_FLAG_LOCKED) && (exi->CallbackEXI || pexi->CallbackEXI))
			FUNC3((FUNC0(IRQ_EXI0_EXI)|FUNC0(IRQ_EXI2_EXI)));
	} else if(nChn==EXI_CHANNEL_1) {
		FUNC2(FUNC0(IRQ_EXI1_EXI));
		if(!(exi->flags&EXI_FLAG_LOCKED) && exi->CallbackEXI) FUNC3(FUNC0(IRQ_EXI1_EXI));
	} else if(nChn==EXI_CHANNEL_2) {				//explicitly use of channel 2 only if debugger is attached.
		FUNC2(FUNC0(IRQ_EXI0_EXI));
		if(!(exi->flags&EXI_FLAG_LOCKED) && FUNC1(IRQ_PI_DEBUG)) FUNC3(FUNC0(IRQ_EXI2_EXI));
	}
}