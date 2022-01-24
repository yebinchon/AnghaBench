#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_2__ {int dirtyState; int genMode; int* chnCntrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int FUNC1 (int,int,int) ; 
 TYPE_1__* __gx ; 

__attribute__((used)) static void FUNC2()
{
	u32 i,chan,mask;

	if(__gx->dirtyState&0x01000000) FUNC0(0x1009,(FUNC1(__gx->genMode,4,3)));

	i = 0;
	chan = 0x100e;
	mask = FUNC1(__gx->dirtyState,12,4);
	while(mask) {
		if(mask&0x0001) FUNC0(chan,__gx->chnCntrl[i]);

		mask >>= 1;
		chan++;
		i++;
	}
}