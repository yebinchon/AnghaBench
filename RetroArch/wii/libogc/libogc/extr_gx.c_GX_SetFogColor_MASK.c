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
struct TYPE_3__ {int b; int /*<<< orphan*/  g; int /*<<< orphan*/  r; } ;
typedef  TYPE_1__ GXColor ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int) ; 

void FUNC2(GXColor color)
{
	FUNC0(0xf2000000|(FUNC1(color.r,16,8)|FUNC1(color.g,8,8)|(color.b&0xff)));
}