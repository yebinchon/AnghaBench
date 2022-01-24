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
struct TYPE_3__ {int r; int b; int /*<<< orphan*/  g; int /*<<< orphan*/  a; } ;
typedef  TYPE_1__ GXColor ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int) ; 

void FUNC2(GXColor color,u32 zvalue)
{
	u32 val;

	val = (FUNC1(color.a,8,8))|(color.r&0xff);
	FUNC0(0x4f000000|val);

	val = (FUNC1(color.g,8,8))|(color.b&0xff);
	FUNC0(0x50000000|val);

	val = zvalue&0x00ffffff;
	FUNC0(0x51000000|val);
}