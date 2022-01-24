#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct vpx_image {unsigned char** planes; int* stride; scalar_t__ d_h; scalar_t__ d_w; } ;
struct TYPE_4__ {struct vpx_image rawimg_alpha; } ;
typedef  TYPE_1__ VPxContext ;
struct TYPE_5__ {TYPE_1__* priv_data; } ;
typedef  TYPE_2__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  VPX_IMG_FMT_I420 ; 
 size_t VPX_PLANE_U ; 
 size_t VPX_PLANE_V ; 
 int /*<<< orphan*/  FUNC1 (unsigned char**) ; 
 unsigned char* FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct vpx_image*,int /*<<< orphan*/ ,int,int,int,unsigned char*) ; 

__attribute__((used)) static int FUNC5(AVCodecContext *avctx, int width, int height)
{
    VPxContext *ctx = avctx->priv_data;
    struct vpx_image *rawimg_alpha = &ctx->rawimg_alpha;
    unsigned char **planes = rawimg_alpha->planes;
    int *stride = rawimg_alpha->stride;

    if (!planes[VPX_PLANE_U] ||
        !planes[VPX_PLANE_V] ||
        width  != (int)rawimg_alpha->d_w ||
        height != (int)rawimg_alpha->d_h) {
        FUNC1(&planes[VPX_PLANE_U]);
        FUNC1(&planes[VPX_PLANE_V]);

        FUNC4(rawimg_alpha, VPX_IMG_FMT_I420, width, height, 1,
                     (unsigned char*)1);
        planes[VPX_PLANE_U] = FUNC2(stride[VPX_PLANE_U], height);
        planes[VPX_PLANE_V] = FUNC2(stride[VPX_PLANE_V], height);
        if (!planes[VPX_PLANE_U] || !planes[VPX_PLANE_V])
            return FUNC0(ENOMEM);

        FUNC3(planes[VPX_PLANE_U], 0x80, stride[VPX_PLANE_U] * height);
        FUNC3(planes[VPX_PLANE_V], 0x80, stride[VPX_PLANE_V] * height);
    }

    return 0;
}