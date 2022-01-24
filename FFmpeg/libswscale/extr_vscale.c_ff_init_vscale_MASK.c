#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VScalerContext ;
struct TYPE_7__ {int /*<<< orphan*/  use_mmx_vfilter; int /*<<< orphan*/  yuv2anyX; scalar_t__ yuv2packedX; int /*<<< orphan*/  yuv2packed2; int /*<<< orphan*/  yuv2packed1; int /*<<< orphan*/  yuv2nv12cX; int /*<<< orphan*/  yuv2planeX; int /*<<< orphan*/  yuv2plane1; int /*<<< orphan*/  needAlpha; int /*<<< orphan*/  dstFormat; } ;
struct TYPE_6__ {int /*<<< orphan*/  alpha; int /*<<< orphan*/ * dst; int /*<<< orphan*/ * src; int /*<<< orphan*/ * instance; int /*<<< orphan*/  process; } ;
typedef  int /*<<< orphan*/  SwsSlice ;
typedef  TYPE_1__ SwsFilterDescriptor ;
typedef  TYPE_2__ SwsContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  any_vscale ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (int,int) ; 
 int /*<<< orphan*/  chr_planar_vscale ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  lum_planar_vscale ; 
 int /*<<< orphan*/  packed_vscale ; 

int FUNC7(SwsContext *c, SwsFilterDescriptor *desc, SwsSlice *src, SwsSlice *dst)
{
    VScalerContext *lumCtx = NULL;
    VScalerContext *chrCtx = NULL;

    if (FUNC6(c->dstFormat) || (FUNC5(c->dstFormat) && !FUNC4(c->dstFormat))) {
        lumCtx = FUNC1(sizeof(VScalerContext));
        if (!lumCtx)
            return FUNC0(ENOMEM);


        desc[0].process = lum_planar_vscale;
        desc[0].instance = lumCtx;
        desc[0].src = src;
        desc[0].dst = dst;
        desc[0].alpha = c->needAlpha;

        if (!FUNC5(c->dstFormat)) {
            chrCtx = FUNC1(sizeof(VScalerContext));
            if (!chrCtx)
                return FUNC0(ENOMEM);
            desc[1].process = chr_planar_vscale;
            desc[1].instance = chrCtx;
            desc[1].src = src;
            desc[1].dst = dst;
        }
    } else {
        lumCtx = FUNC2(sizeof(VScalerContext), 2);
        if (!lumCtx)
            return FUNC0(ENOMEM);
        chrCtx = &lumCtx[1];

        desc[0].process = c->yuv2packedX ? packed_vscale : any_vscale;
        desc[0].instance = lumCtx;
        desc[0].src = src;
        desc[0].dst = dst;
        desc[0].alpha = c->needAlpha;
    }

    FUNC3(c, c->yuv2plane1, c->yuv2planeX, c->yuv2nv12cX,
        c->yuv2packed1, c->yuv2packed2, c->yuv2packedX, c->yuv2anyX, c->use_mmx_vfilter);
    return 0;
}