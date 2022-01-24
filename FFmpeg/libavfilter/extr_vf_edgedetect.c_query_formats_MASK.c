#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_6__ {TYPE_1__* priv; } ;
struct TYPE_5__ {scalar_t__ mode; } ;
typedef  TYPE_1__ EdgeDetectContext ;
typedef  int /*<<< orphan*/  AVFilterFormats ;
typedef  TYPE_2__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  AV_PIX_FMT_GBRP 133 
#define  AV_PIX_FMT_GRAY8 132 
#define  AV_PIX_FMT_NONE 131 
#define  AV_PIX_FMT_YUV420P 130 
#define  AV_PIX_FMT_YUV422P 129 
#define  AV_PIX_FMT_YUV444P 128 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ MODE_CANNY ; 
 scalar_t__ MODE_COLORMIX ; 
 scalar_t__ MODE_WIRES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int const*) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(AVFilterContext *ctx)
{
    const EdgeDetectContext *edgedetect = ctx->priv;
    static const enum AVPixelFormat wires_pix_fmts[] = {AV_PIX_FMT_GRAY8, AV_PIX_FMT_NONE};
    static const enum AVPixelFormat canny_pix_fmts[] = {AV_PIX_FMT_YUV420P, AV_PIX_FMT_YUV422P, AV_PIX_FMT_YUV444P, AV_PIX_FMT_GBRP, AV_PIX_FMT_GRAY8, AV_PIX_FMT_NONE};
    static const enum AVPixelFormat colormix_pix_fmts[] = {AV_PIX_FMT_GBRP, AV_PIX_FMT_GRAY8, AV_PIX_FMT_NONE};
    AVFilterFormats *fmts_list;
    const enum AVPixelFormat *pix_fmts = NULL;

    if (edgedetect->mode == MODE_WIRES) {
        pix_fmts = wires_pix_fmts;
    } else if (edgedetect->mode == MODE_COLORMIX) {
        pix_fmts = colormix_pix_fmts;
    } else if (edgedetect->mode == MODE_CANNY) {
        pix_fmts = canny_pix_fmts;
    } else {
        FUNC1(0);
    }
    fmts_list = FUNC2(pix_fmts);
    if (!fmts_list)
        return FUNC0(ENOMEM);
    return FUNC3(ctx, fmts_list);
}