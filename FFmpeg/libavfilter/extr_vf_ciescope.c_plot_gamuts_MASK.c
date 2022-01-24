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
typedef  int /*<<< orphan*/  uint16_t ;
struct ColorSystem {int xRed; int yRed; int xGreen; int yGreen; int xBlue; int yBlue; } ;

/* Variables and functions */
 int LUV ; 
 int NB_CS ; 
 int UCS ; 
 int XYY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct ColorSystem* color_systems ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int,double*,double*) ; 
 int /*<<< orphan*/  FUNC3 (int,int,double*,double*) ; 

__attribute__((used)) static void FUNC4(uint16_t *pixels, int linesize, int w, int h,
                        int cie, int gamuts)
{
    int i;

    for (i = 0; i < NB_CS; i++) {
        const struct ColorSystem *cs = &color_systems[i];
        int rx, ry, gx, gy, bx, by;

        if (!((1 << i) & gamuts))
            continue;
        if (cie == LUV) {
            double wup, wvp;
            FUNC2(cs->xRed, cs->yRed, &wup, &wvp);
            rx = (w - 1) * wup;
            ry = (h - 1) - ((int) ((h - 1) * wvp));
            FUNC2(cs->xGreen, cs->yGreen, &wup, &wvp);
            gx = (w - 1) * wup;
            gy = (h - 1) - ((int) ((h - 1) * wvp));
            FUNC2(cs->xBlue, cs->yBlue, &wup, &wvp);
            bx = (w - 1) * wup;
            by = (h - 1) - ((int) ((h - 1) * wvp));
        } else if (cie == UCS) {
            double wu, wv;
            FUNC3(cs->xRed, cs->yRed, &wu, &wv);
            rx = (w - 1) * wu;
            ry = (h - 1) - ((int) ((h - 1) * wv));
            FUNC3(cs->xGreen, cs->yGreen, &wu, &wv);
            gx = (w - 1) * wu;
            gy = (h - 1) - ((int) ((h - 1) * wv));
            FUNC3(cs->xBlue, cs->yBlue, &wu, &wv);
            bx = (w - 1) * wu;
            by = (h - 1) - ((int) ((h - 1) * wv));
        } else if (cie == XYY) {
            rx = (w - 1) * cs->xRed;
            ry = (h - 1) - ((int) ((h - 1) * cs->yRed));
            gx = (w - 1) * cs->xGreen;
            gy = (h - 1) - ((int) ((h - 1) * cs->yGreen));
            bx = (w - 1) * cs->xBlue;
            by = (h - 1) - ((int) ((h - 1) * cs->yBlue));
        } else {
            FUNC0(0);
        }

        FUNC1(pixels, linesize, rx, ry, gx, gy, w, h);
        FUNC1(pixels, linesize, gx, gy, bx, by, w, h);
        FUNC1(pixels, linesize, bx, by, rx, ry, w, h);
    }
}