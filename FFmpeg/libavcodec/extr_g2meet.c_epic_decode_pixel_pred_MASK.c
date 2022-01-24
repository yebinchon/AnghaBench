#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/  unsigned_rung; int /*<<< orphan*/  els_ctx; } ;
typedef  TYPE_1__ ePICContext ;

/* Variables and functions */
 int B_shift ; 
 int G_shift ; 
 int R_shift ; 
 int FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int,int) ; 
 int FUNC2 (TYPE_1__*,int,int,int) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static uint32_t FUNC4(ePICContext *dc, int x, int y,
                                       const uint32_t *curr_row,
                                       const uint32_t *above_row)
{
    uint32_t N, W, NW, pred;
    unsigned delta;
    int GN, GW, GNW, R, G, B;

    if (x && y) {
        W  = curr_row[x  - 1];
        N  = above_row[x];
        NW = above_row[x - 1];

        GN  = (N  >> G_shift) & 0xFF;
        GW  = (W  >> G_shift) & 0xFF;
        GNW = (NW >> G_shift) & 0xFF;

        G = FUNC2(dc, GN, GW, GNW);

        R = G + FUNC2(dc,
                                           ((N  >> R_shift) & 0xFF) - GN,
                                           ((W  >> R_shift) & 0xFF) - GW,
                                           ((NW >> R_shift) & 0xFF) - GNW);

        B = G + FUNC2(dc,
                                           ((N  >> B_shift) & 0xFF) - GN,
                                           ((W  >> B_shift) & 0xFF) - GW,
                                           ((NW >> B_shift) & 0xFF) - GNW);
    } else {
        if (x)
            pred = curr_row[x - 1];
        else
            pred = above_row[x];

        delta = FUNC3(&dc->els_ctx, &dc->unsigned_rung);
        R     = ((pred >> R_shift) & 0xFF) - FUNC0(delta);

        delta = FUNC3(&dc->els_ctx, &dc->unsigned_rung);
        G     = ((pred >> G_shift) & 0xFF) - FUNC0(delta);

        delta = FUNC3(&dc->els_ctx, &dc->unsigned_rung);
        B     = ((pred >> B_shift) & 0xFF) - FUNC0(delta);
    }

    if (R<0 || G<0 || B<0 || R > 255 || G > 255 || B > 255) {
        FUNC1(NULL, "RGB %d %d %d is out of range\n", R, G, B);
        return 0;
    }

    return (R << R_shift) | (G << G_shift) | (B << B_shift);
}