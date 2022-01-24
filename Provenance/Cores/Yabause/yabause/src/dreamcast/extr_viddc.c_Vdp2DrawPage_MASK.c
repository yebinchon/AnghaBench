#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int x; int pagewh; int y; int patternpixelwh; int draww; int drawh; int addr; int patterndatasize; } ;
typedef  TYPE_1__ vdp2draw_struct ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC2(vdp2draw_struct *info)
{
    int X, Y;
    int i, j;

    X = info->x;
    for(i = 0;i < info->pagewh;i++)
    {
        Y = info->y;
        info->x = X;
        for(j = 0;j < info->pagewh;j++)
        {
            info->y = Y;
            if ((info->x >= -info->patternpixelwh) &&
                (info->y >= -info->patternpixelwh) &&
                (info->x <= info->draww) &&
                (info->y <= info->drawh))
            {
                FUNC1(info);
                FUNC0(info);
            }
            else
            {
                info->addr += info->patterndatasize * 2;
                info->x += info->patternpixelwh;
                info->y += info->patternpixelwh;
            }
        }
    }
}