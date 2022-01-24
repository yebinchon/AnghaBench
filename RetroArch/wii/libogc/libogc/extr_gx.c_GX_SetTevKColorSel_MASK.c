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
typedef  int u8 ;
typedef  size_t u32 ;
struct TYPE_2__ {int* tevSwapModeTable; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int,int) ; 
 size_t FUNC2 (int,int,int) ; 
 TYPE_1__* __gx ; 

void FUNC3(u8 tevstage,u8 sel)
{
	u32 reg = (FUNC2(tevstage,1,3));

	if(tevstage&1)
		__gx->tevSwapModeTable[reg] = (__gx->tevSwapModeTable[reg]&~0x7C000)|(FUNC1(sel,14,5));
	else
		__gx->tevSwapModeTable[reg] = (__gx->tevSwapModeTable[reg]&~0x1F0)|(FUNC1(sel,4,5));
	FUNC0(__gx->tevSwapModeTable[reg]);
}