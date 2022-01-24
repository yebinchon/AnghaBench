#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ z; scalar_t__ x; int /*<<< orphan*/  ry; int /*<<< orphan*/  rx; int /*<<< orphan*/  y; } ;
struct TYPE_5__ {TYPE_1__ state; } ;
typedef  TYPE_1__ State ;
typedef  TYPE_2__ Player ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,scalar_t__) ; 
 int FUNC2 (int,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*,int*) ; 
 scalar_t__ FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 

int FUNC5(Player *player, int *x, int *y, int *z, int *face) {
    State *s = &player->state;
    int w = FUNC2(0, s->x, s->y, s->z, s->rx, s->ry, x, y, z);
    if (FUNC3(w)) {
        int hx, hy, hz;
        FUNC2(1, s->x, s->y, s->z, s->rx, s->ry, &hx, &hy, &hz);
        int dx = hx - *x;
        int dy = hy - *y;
        int dz = hz - *z;
        if (dx == -1 && dy == 0 && dz == 0) {
            *face = 0; return 1;
        }
        if (dx == 1 && dy == 0 && dz == 0) {
            *face = 1; return 1;
        }
        if (dx == 0 && dy == 0 && dz == -1) {
            *face = 2; return 1;
        }
        if (dx == 0 && dy == 0 && dz == 1) {
            *face = 3; return 1;
        }
        if (dx == 0 && dy == 1 && dz == 0) {
            int degrees = FUNC4(FUNC0(FUNC1(s->x - hx, s->z - hz)));
            if (degrees < 0) {
                degrees += 360;
            }
            int top = ((degrees + 45) / 90) % 4;
            *face = 4 + top; return 1;
        }
    }
    return 0;
}