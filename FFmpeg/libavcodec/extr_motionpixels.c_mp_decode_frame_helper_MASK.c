#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {void* u; void* v; int /*<<< orphan*/  y; } ;
typedef  TYPE_2__ YuvPixel ;
struct TYPE_14__ {scalar_t__* changes_map; TYPE_1__* avctx; TYPE_2__* vpt; int /*<<< orphan*/  gradient_scale; } ;
struct TYPE_12__ {int height; int width; } ;
typedef  TYPE_3__ MotionPixelsContext ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 void* FUNC1 (void*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 TYPE_2__ FUNC6 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (TYPE_3__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,int,TYPE_2__*) ; 

__attribute__((used)) static void FUNC9(MotionPixelsContext *mp, GetBitContext *gb)
{
    YuvPixel p;
    int y, y0;

    FUNC0(mp->changes_map[0]);

    for (y = 0; y < mp->avctx->height; ++y) {
        if (mp->changes_map[y * mp->avctx->width] != 0) {
            FUNC3(mp->gradient_scale, 1, sizeof(mp->gradient_scale));
            p = FUNC6(mp, 0, y);
        } else {
            p.y += FUNC7(mp, 0, FUNC5(mp, gb));
            p.y = FUNC2(p.y, 5);
            if ((y & 3) == 0) {
                p.v += FUNC7(mp, 1, FUNC5(mp, gb));
                p.v = FUNC1(p.v, 5);
                p.u += FUNC7(mp, 2, FUNC5(mp, gb));
                p.u = FUNC1(p.u, 5);
            }
            mp->vpt[y] = p;
            FUNC8(mp, 0, y, &p);
        }
    }
    for (y0 = 0; y0 < 2; ++y0)
        for (y = y0; y < mp->avctx->height; y += 2)
            FUNC4(mp, gb, y);
}