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
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int,int) ; 
 int currIrqMask ; 
 int prevIrqMask ; 

void FUNC3(u32 nMask)
{
	u32 level;
	u32 mask;

	FUNC0(level);
	mask = (nMask&~(prevIrqMask|currIrqMask));
	nMask = (nMask|prevIrqMask);
	prevIrqMask = nMask;
	while((mask=FUNC2(mask,(nMask|currIrqMask)))!=0);
	FUNC1(level);
}