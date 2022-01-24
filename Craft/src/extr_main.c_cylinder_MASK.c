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
struct TYPE_5__ {int w; int x; int y; int z; int member_0; int member_1; int member_2; int member_3; } ;
typedef  TYPE_1__ Block ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int,int,int,int) ; 

void FUNC3(Block *b1, Block *b2, int radius, int fill) {
    if (b1->w != b2->w) {
        return;
    }
    int w = b1->w;
    int x1 = FUNC1(b1->x, b2->x);
    int y1 = FUNC1(b1->y, b2->y);
    int z1 = FUNC1(b1->z, b2->z);
    int x2 = FUNC0(b1->x, b2->x);
    int y2 = FUNC0(b1->y, b2->y);
    int z2 = FUNC0(b1->z, b2->z);
    int fx = x1 != x2;
    int fy = y1 != y2;
    int fz = z1 != z2;
    if (fx + fy + fz != 1) {
        return;
    }
    Block block = {x1, y1, z1, w};
    if (fx) {
        for (int x = x1; x <= x2; x++) {
            block.x = x;
            FUNC2(&block, radius, fill, 1, 0, 0);
        }
    }
    if (fy) {
        for (int y = y1; y <= y2; y++) {
            block.y = y;
            FUNC2(&block, radius, fill, 0, 1, 0);
        }
    }
    if (fz) {
        for (int z = z1; z <= z2; z++) {
            block.z = z;
            FUNC2(&block, radius, fill, 0, 0, 1);
        }
    }
}