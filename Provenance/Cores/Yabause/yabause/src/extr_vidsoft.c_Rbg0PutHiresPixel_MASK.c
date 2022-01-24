#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  linescreen; int /*<<< orphan*/  priority; int /*<<< orphan*/  (* PostPixelFetchCalc ) (TYPE_1__*,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ vdp2draw_struct ;
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 

void FUNC4(vdp2draw_struct *info, u32 color, u32 dot, int i, int j)
{
   u32 pixel = info->PostPixelFetchCalc(info, FUNC0(FUNC1(info, color, dot), color));
   int x_pos = i * 2;
   FUNC2(info->priority, x_pos, j, pixel, info->linescreen, info);
   FUNC2(info->priority, x_pos + 1, j, pixel, info->linescreen, info);
}