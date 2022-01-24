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
 TYPE_1__* __gx ; 

void FUNC2(u8 swapid,u8 r,u8 g,u8 b,u8 a)
{
	u32 regA = 0+(FUNC1(swapid,1,3));
	u32 regB = 1+(FUNC1(swapid,1,3));

	__gx->tevSwapModeTable[regA] = (__gx->tevSwapModeTable[regA]&~0x3)|(r&0x3);
	__gx->tevSwapModeTable[regA] = (__gx->tevSwapModeTable[regA]&~0xC)|(FUNC1(g,2,2));
	FUNC0(__gx->tevSwapModeTable[regA]);

	__gx->tevSwapModeTable[regB] = (__gx->tevSwapModeTable[regB]&~0x3)|(b&0x3);
	__gx->tevSwapModeTable[regB] = (__gx->tevSwapModeTable[regB]&~0xC)|(FUNC1(a,2,2));
	FUNC0(__gx->tevSwapModeTable[regB]);
}