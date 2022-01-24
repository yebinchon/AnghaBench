#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  AudioVectorScopeContext ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void FUNC2(AudioVectorScopeContext *s, int x0, int y0, int x1, int y1)
{
    int dx = FUNC0(x1-x0), sx = x0 < x1 ? 1 : -1;
    int dy = FUNC0(y1-y0), sy = y0 < y1 ? 1 : -1;
    int err = (dx>dy ? dx : -dy) / 2, e2;

    for (;;) {
        FUNC1(s, x0, y0);

        if (x0 == x1 && y0 == y1)
            break;

        e2 = err;

        if (e2 >-dx) {
            err -= dy;
            x0 += sx;
        }

        if (e2 < dy) {
            err += dx;
            y0 += sy;
        }
    }
}