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
struct __gx_litobj {int col; } ;
struct TYPE_3__ {int a; int /*<<< orphan*/  b; int /*<<< orphan*/  g; int /*<<< orphan*/  r; } ;
typedef  int /*<<< orphan*/  GXLightObj ;
typedef  TYPE_1__ GXColor ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int,int) ; 

void FUNC1(GXLightObj *lit_obj,GXColor col)
{
	struct __gx_litobj *lit = (struct __gx_litobj*)lit_obj;
	lit->col = ((FUNC0(col.r,24,8))|(FUNC0(col.g,16,8))|(FUNC0(col.b,8,8))|(col.a&0xff));
}