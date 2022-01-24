#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_3__ {int b; void* g; void* r; void* a; } ;
typedef  TYPE_1__ GXColor ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 void* FUNC1 (int,int,int) ; 

void FUNC2(u16 x,u16 y,GXColor *color)
{
	u32 regval,val;

	regval = 0xc8000000|(FUNC0(x,2,10));
	regval = (regval&~0x3FF000)|(FUNC0(y,12,10));
	val = *(u32*)regval;
	color->a = FUNC1(val,24,8);
	color->r = FUNC1(val,16,8);
	color->g = FUNC1(val,8,8);
	color->b = val&0xff;
}