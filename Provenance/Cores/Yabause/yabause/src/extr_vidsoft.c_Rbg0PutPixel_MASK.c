#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  linescreen; int /*<<< orphan*/  (* PostPixelFetchCalc ) (TYPE_1__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  priority; } ;
typedef  TYPE_1__ vdp2draw_struct ;
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 scalar_t__ vdp2_x_hires ; 

void FUNC5(vdp2draw_struct *info, u32 color, u32 dot, int i, int j)
{
   if (vdp2_x_hires)
   {
      FUNC2(info, color, dot, i, j);
   }
   else
      FUNC3(info->priority, i, j, info->PostPixelFetchCalc(info, FUNC0(FUNC1(info, color, dot), color)), info->linescreen, info);
}