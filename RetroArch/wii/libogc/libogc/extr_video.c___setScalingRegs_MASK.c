#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u16 ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  changed ; 
 int* regs ; 

__attribute__((used)) static void FUNC2(u16 panSizeX,u16 dispSizeX,s32 threeD)
{
	if(threeD) panSizeX = FUNC1(panSizeX,1,16);
	if(panSizeX<dispSizeX) {
		regs[37] = 0x1000|((dispSizeX+(FUNC1(panSizeX,8,16)-1))/dispSizeX);
		regs[56] = panSizeX;
		changed |= FUNC0(37);
		changed |= FUNC0(56);
	} else {
		regs[37] = 0x100;
		changed |= FUNC0(37);
	}
}