#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int ptrdiff_t ;
struct TYPE_7__ {int threshold; } ;
typedef  TYPE_1__ HysteresisContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int*,int*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int,int) ; 

__attribute__((used)) static void FUNC4(HysteresisContext *s, const uint8_t *bsrc, const uint8_t *asrc,
                        uint8_t *dst,
                        ptrdiff_t blinesize, ptrdiff_t alinesize,
                        ptrdiff_t dlinesize,
                        int w, int h)
{
    const int t = s->threshold;
    int x, y;

    for (y = 0; y < h; y++) {
        for (x = 0; x < w; x++) {
            if ((bsrc[x + y * blinesize] > t) && (asrc[x + y * alinesize] > t) && !FUNC1(s, x, y, w)) {
                int posx, posy;

                dst[x + y * dlinesize] = asrc[x + y * alinesize];

                FUNC3(s, x, y, w);

                while (!FUNC0(s)) {
                    int x_min, x_max, y_min, y_max, yy, xx;

                    FUNC2(s, &posx, &posy);

                    x_min = posx > 0 ? posx - 1 : 0;
                    x_max = posx < w - 1 ? posx + 1 : posx;
                    y_min = posy > 0 ? posy - 1 : 0;
                    y_max = posy < h - 1 ? posy + 1 : posy;

                    for (yy = y_min; yy <= y_max; yy++) {
                        for (xx = x_min; xx <= x_max; xx++) {
                            if ((asrc[xx + yy * alinesize] > t) && !FUNC1(s, xx, yy, w)) {
                                dst[xx + yy * dlinesize] = asrc[xx + yy * alinesize];
                                FUNC3(s, xx, yy, w);
                            }
                        }
                    }
                }
            }
        }
    }
}