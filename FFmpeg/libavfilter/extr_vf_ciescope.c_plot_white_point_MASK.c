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
struct ColorSystem {int const xWhite; int const yWhite; } ;

/* Variables and functions */
 int const LUV ; 
 int FUNC0 (int) ; 
 int const UCS ; 
 int const XYY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 struct ColorSystem* color_systems ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int const,int,int,int,int,int const,int const) ; 
 int /*<<< orphan*/  FUNC3 (int const,int const,double*,double*) ; 
 int /*<<< orphan*/  FUNC4 (int const,int const,double*,double*) ; 

__attribute__((used)) static void
FUNC5(uint16_t*      pixels,
                 int      const linesize,
                 int      const w,
                 int      const h,
                 int      const maxval,
                 int      const color_system,
                 int      const cie)
{
    const struct ColorSystem *cs = &color_systems[color_system];
    int wx, wy;

    if (cie == LUV) {
        double wup, wvp;
        FUNC3(cs->xWhite, cs->yWhite, &wup, &wvp);
        wx = (w - 1) * wup;
        wy = (h - 1) - ((int) ((h - 1) * wvp));
    } else if (cie == UCS) {
        double wu, wv;
        FUNC4(cs->xWhite, cs->yWhite, &wu, &wv);
        wx = (w - 1) * wu;
        wy = (h - 1) - ((int) ((h - 1) * wv));
    } else if (cie == XYY) {
        wx = (w - 1) * cs->xWhite;
        wy = (h - 1) - ((int) ((h - 1) * cs->yWhite));
    } else {
        FUNC1(0);
    }

    FUNC2(pixels, linesize,
               wx + FUNC0(3), wy, wx + FUNC0(10), wy,
               w, h);
    FUNC2(pixels, linesize,
               wx - FUNC0(3), wy, wx - FUNC0(10), wy,
               w, h);
    FUNC2(pixels, linesize,
               wx, wy + FUNC0(3), wx, wy + FUNC0(10),
               w, h);
    FUNC2(pixels, linesize,
               wx, wy - FUNC0(3), wx, wy - FUNC0(10),
               w, h);
}