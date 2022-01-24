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
typedef  int u8 ;
typedef  int u32 ;
struct TYPE_3__ {int a; int r; int g; int b; } ;
typedef  TYPE_1__ GXColorS10 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int,int,int) ; 

void FUNC2(u8 tev_regid,GXColorS10 color)
{
	u32 reg;

	reg = (FUNC1((0xe0+(tev_regid<<1)),24,8)|(FUNC1(color.a,12,11))|(color.r&0x7ff));
	FUNC0(reg);

	reg = (FUNC1((0xe1+(tev_regid<<1)),24,8)|(FUNC1(color.g,12,11))|(color.b&0x7ff));
	FUNC0(reg);

	//this two calls should obviously flush the Write Gather Pipe.
	FUNC0(reg);
	FUNC0(reg);
}