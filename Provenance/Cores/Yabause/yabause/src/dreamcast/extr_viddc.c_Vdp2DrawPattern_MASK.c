#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int patternwh; int x; int y; } ;
typedef  TYPE_1__ vdp2draw_struct ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC1(vdp2draw_struct *info)
{
    //   if (info->specialprimode == 1)
    //      tile.priority = (info->priority & 0xFFFFFFFE) | info->specialfunction;
    //   else
    //      tile.priority = info->priority;

    switch(info->patternwh)
    {
        case 1:
            FUNC0(info);
            info->x += 8;
            info->y += 8;
            break;
        case 2:
            FUNC0(info);
            info->x += 8;
            FUNC0(info);
            info->x -= 8;
            info->y += 8;
            FUNC0(info);
            info->x += 8;
            FUNC0(info);
            info->x += 8;
            info->y += 8;
            break;
    }
}