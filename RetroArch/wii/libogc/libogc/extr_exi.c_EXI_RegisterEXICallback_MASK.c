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
typedef  int /*<<< orphan*/  u32 ;
typedef  size_t s32 ;
struct TYPE_4__ {int /*<<< orphan*/ * CallbackEXI; } ;
typedef  TYPE_1__ exibus_priv ;
typedef  int /*<<< orphan*/ * EXICallback ;

/* Variables and functions */
 size_t EXI_CHANNEL_0 ; 
 size_t EXI_CHANNEL_2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (size_t,TYPE_1__*) ; 
 TYPE_1__* eximap ; 

EXICallback FUNC3(s32 nChn,EXICallback exi_cb)
{
	u32 level;
	EXICallback old = NULL;
	exibus_priv *exi = &eximap[nChn];
	FUNC0(level);
	old = exi->CallbackEXI;
	exi->CallbackEXI = exi_cb;
	if(nChn==EXI_CHANNEL_2) FUNC2(EXI_CHANNEL_0,&eximap[EXI_CHANNEL_0]);
	else FUNC2(nChn,exi);
	FUNC1(level);
	return old;
}