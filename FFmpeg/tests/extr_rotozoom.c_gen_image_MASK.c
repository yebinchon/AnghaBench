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

/* Variables and functions */
 int FIXP ; 
 int* h_cos ; 
 int* h_sin ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tab_b ; 
 int /*<<< orphan*/  tab_g ; 
 int /*<<< orphan*/  tab_r ; 

__attribute__((used)) static void FUNC2(int num, int w, int h)
{
    const int c = h_cos[num % 360];
    const int s = h_sin[num % 360];

    const int xi = -(w / 2) * c;
    const int yi =  (w / 2) * s;

    const int xj = -(h / 2) * s;
    const int yj = -(h / 2) * c;
    int i, j;

    int x, y;
    int xprime = xj;
    int yprime = yj;

    for (j = 0; j < h; j++) {
        x       = xprime + xi + FIXP * w / 2;
        xprime += s;

        y       = yprime + yi + FIXP * h / 2;
        yprime += c;

        for (i = 0; i < w; i++) {
            x += c;
            y -= s;
            FUNC1(i, j,
                      FUNC0(tab_r, x, y),
                      FUNC0(tab_g, x, y),
                      FUNC0(tab_b, x, y));
        }
    }
}