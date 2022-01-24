#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int ptrdiff_t ;
struct TYPE_11__ {int (* get_model_sym ) (TYPE_3__*,int /*<<< orphan*/ *) ;} ;
struct TYPE_10__ {int pal_stride; int rgb_stride; int* pal; int /*<<< orphan*/ * rgb_pic; int /*<<< orphan*/ * pal_pic; } ;
struct TYPE_9__ {int /*<<< orphan*/  intra_pix_ctx; int /*<<< orphan*/  intra_region; TYPE_2__* c; } ;
typedef  TYPE_1__ SliceContext ;
typedef  TYPE_2__ MSS12Context ;
typedef  TYPE_3__ ArithCoder ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int,int,int,int,int,int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC4 (TYPE_3__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(SliceContext *sc, ArithCoder *acoder,
                               int x, int y, int width, int height)
{
    MSS12Context const *c = sc->c;
    int mode;

    mode = acoder->get_model_sym(acoder, &sc->intra_region);

    if (!mode) {
        int i, j, pix, rgb_pix;
        ptrdiff_t stride     = c->pal_stride;
        ptrdiff_t rgb_stride = c->rgb_stride;
        uint8_t *dst     = c->pal_pic + x     + y * stride;
        uint8_t *rgb_dst = c->rgb_pic + x * 3 + y * rgb_stride;

        pix     = FUNC1(acoder, &sc->intra_pix_ctx, NULL, 0, 0);
        if (pix < 0)
            return pix;
        rgb_pix = c->pal[pix];
        for (i = 0; i < height; i++, dst += stride, rgb_dst += rgb_stride) {
            FUNC3(dst, pix, width);
            if (c->rgb_pic)
                for (j = 0; j < width * 3; j += 3)
                    FUNC0(rgb_dst + j, rgb_pix);
        }
    } else {
        return FUNC2(acoder, c->pal_pic, c->rgb_pic,
                             x, y, width, height, c->pal_stride, c->rgb_stride,
                             &sc->intra_pix_ctx, &c->pal[0]);
    }

    return 0;
}