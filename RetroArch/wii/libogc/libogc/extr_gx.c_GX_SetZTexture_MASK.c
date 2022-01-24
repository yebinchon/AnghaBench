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
typedef  int u8 ;
typedef  int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int GX_TF_Z16 ; 
 int GX_TF_Z8 ; 
 scalar_t__ FUNC1 (int,int,int) ; 

void FUNC2(u8 op,u8 fmt,u32 bias)
{
	u32 val = 0;

	if(fmt==GX_TF_Z8) fmt = 0;
	else if(fmt==GX_TF_Z16) fmt = 1;
	else fmt = 2;

	val = (u32)(FUNC1(op,2,2))|(fmt&3);
	FUNC0(0xF4000000|(bias&0x00FFFFFF));
	FUNC0(0xF5000000|(val&0x00FFFFFF));
}