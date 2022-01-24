#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_1__* players; } ;
struct TYPE_5__ {int /*<<< orphan*/  ry; int /*<<< orphan*/  rx; int /*<<< orphan*/  z; int /*<<< orphan*/  y; int /*<<< orphan*/  x; } ;
struct TYPE_4__ {TYPE_2__ state; } ;
typedef  TYPE_2__ State ;

/* Variables and functions */
 TYPE_3__* g ; 
 int /*<<< orphan*/  FUNC0 (int,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,int*,int*) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int,int /*<<< orphan*/ ) ; 

void FUNC6() {
    State *s = &g->players->state;
    int hx, hy, hz;
    int hw = FUNC1(0, s->x, s->y, s->z, s->rx, s->ry, &hx, &hy, &hz);
    if (hy > 0 && hy < 256 && FUNC2(hw)) {
        FUNC5(hx, hy, hz, 0);
        FUNC4(hx, hy, hz, 0);
        if (FUNC3(FUNC0(hx, hy + 1, hz))) {
            FUNC5(hx, hy + 1, hz, 0);
        }
    }
}