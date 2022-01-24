#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int y; scalar_t__ z; scalar_t__ x; } ;
struct TYPE_4__ {TYPE_1__ block0; TYPE_1__ block1; TYPE_1__ copy0; TYPE_1__ copy1; } ;
typedef  TYPE_1__ Block ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int,scalar_t__,int) ; 
 TYPE_2__* g ; 
 int FUNC3 (scalar_t__,int,scalar_t__) ; 

void FUNC4() {
    Block *c1 = &g->copy1;
    Block *c2 = &g->copy0;
    Block *p1 = &g->block1;
    Block *p2 = &g->block0;
    int scx = FUNC1(c2->x - c1->x);
    int scz = FUNC1(c2->z - c1->z);
    int spx = FUNC1(p2->x - p1->x);
    int spz = FUNC1(p2->z - p1->z);
    int oy = p1->y - c1->y;
    int dx = FUNC0(c2->x - c1->x);
    int dz = FUNC0(c2->z - c1->z);
    for (int y = 0; y < 256; y++) {
        for (int x = 0; x <= dx; x++) {
            for (int z = 0; z <= dz; z++) {
                int w = FUNC3(c1->x + x * scx, y, c1->z + z * scz);
                FUNC2(p1->x + x * spx, y + oy, p1->z + z * spz, w);
            }
        }
    }
}