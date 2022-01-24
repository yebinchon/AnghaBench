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
typedef  int /*<<< orphan*/  u16 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 

void FUNC1(u16 x,u16 y,u32 *z)
{
	u32 regval;

	regval = 0xc8000000|(FUNC0(x,2,10));
	regval = (regval&~0x3FF000)|(FUNC0(y,12,10));
	regval = (regval&~0xC00000)|0x400000;
	*z = *(u32*)regval;
}