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
struct TYPE_6__ {int /*<<< orphan*/  window; TYPE_1__* players; } ;
struct TYPE_5__ {scalar_t__ rx; double ry; } ;
struct TYPE_4__ {TYPE_2__ state; } ;
typedef  TYPE_2__ State ;

/* Variables and functions */
 int /*<<< orphan*/  GLFW_CURSOR ; 
 scalar_t__ GLFW_CURSOR_DISABLED ; 
 scalar_t__ INVERT_MOUSE ; 
 double FUNC0 (double,scalar_t__) ; 
 double FUNC1 (double,scalar_t__) ; 
 scalar_t__ FUNC2 (int) ; 
 TYPE_3__* g ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,double*,double*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void FUNC5() {
    int exclusive =
        FUNC4(g->window, GLFW_CURSOR) == GLFW_CURSOR_DISABLED;
    static double px = 0;
    static double py = 0;
    State *s = &g->players->state;
    if (exclusive && (px || py)) {
        double mx, my;
        FUNC3(g->window, &mx, &my);
        float m = 0.0025;
        s->rx += (mx - px) * m;
        if (INVERT_MOUSE) {
            s->ry += (my - py) * m;
        }
        else {
            s->ry -= (my - py) * m;
        }
        if (s->rx < 0) {
            s->rx += FUNC2(360);
        }
        if (s->rx >= FUNC2(360)){
            s->rx -= FUNC2(360);
        }
        s->ry = FUNC0(s->ry, -FUNC2(90));
        s->ry = FUNC1(s->ry, FUNC2(90));
        px = mx;
        py = my;
    }
    else {
        FUNC3(g->window, &px, &py);
    }
}