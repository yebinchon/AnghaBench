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
struct TYPE_3__ {int b; int /*<<< orphan*/  g; int /*<<< orphan*/  r; int /*<<< orphan*/  a; } ;
typedef  TYPE_1__ GXColor ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 

void FUNC1(u16 x,u16 y,GXColor color)
{
	u32 regval;

	regval = 0xc8000000|(FUNC0(x,2,10));
	regval = (regval&~0x3FF000)|(FUNC0(y,12,10));
	*(u32*)regval = FUNC0(color.a,24,8)|FUNC0(color.r,16,8)|FUNC0(color.g,8,8)|(color.b&0xff);
}