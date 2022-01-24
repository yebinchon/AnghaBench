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
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int,int) ; 
 int FUNC2 (int,int,int) ; 

void FUNC3(s32 xoffset,s32 yoffset)
{
	s32 xoff = FUNC2((xoffset+0x156),1,24);
	s32 yoff = FUNC2((yoffset+0x156),1,24);

	FUNC0((0x59000000|(FUNC1(yoff,10,10))|(xoff&0x3ff)));
}