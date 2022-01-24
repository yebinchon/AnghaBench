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
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
typedef  int /*<<< orphan*/  AVFilterFormats ;
typedef  int /*<<< orphan*/  AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  AV_PIX_FMT_GBRP 148 
#define  AV_PIX_FMT_GBRP10 147 
#define  AV_PIX_FMT_GBRP9 146 
#define  AV_PIX_FMT_GRAY8 145 
#define  AV_PIX_FMT_NONE 144 
#define  AV_PIX_FMT_YUV410P 143 
#define  AV_PIX_FMT_YUV411P 142 
#define  AV_PIX_FMT_YUV420P 141 
#define  AV_PIX_FMT_YUV420P10 140 
#define  AV_PIX_FMT_YUV420P9 139 
#define  AV_PIX_FMT_YUV422P 138 
#define  AV_PIX_FMT_YUV422P10 137 
#define  AV_PIX_FMT_YUV422P9 136 
#define  AV_PIX_FMT_YUV440P 135 
#define  AV_PIX_FMT_YUV444P 134 
#define  AV_PIX_FMT_YUV444P10 133 
#define  AV_PIX_FMT_YUV444P9 132 
#define  AV_PIX_FMT_YUVJ420P 131 
#define  AV_PIX_FMT_YUVJ422P 130 
#define  AV_PIX_FMT_YUVJ440P 129 
#define  AV_PIX_FMT_YUVJ444P 128 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/ * FUNC1 (int const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC3(AVFilterContext *ctx)
{
    static const enum AVPixelFormat pix_fmts[] = {
        AV_PIX_FMT_YUV444P,  AV_PIX_FMT_YUV422P,
        AV_PIX_FMT_YUV420P,  AV_PIX_FMT_YUV411P,
        AV_PIX_FMT_YUV410P,  AV_PIX_FMT_YUV440P,
        AV_PIX_FMT_YUVJ444P, AV_PIX_FMT_YUVJ422P,
        AV_PIX_FMT_YUVJ420P, AV_PIX_FMT_YUVJ440P,
        AV_PIX_FMT_YUV444P10,  AV_PIX_FMT_YUV422P10,
        AV_PIX_FMT_YUV420P10,
        AV_PIX_FMT_YUV444P9,  AV_PIX_FMT_YUV422P9,
        AV_PIX_FMT_YUV420P9,
        AV_PIX_FMT_GRAY8,
        AV_PIX_FMT_GBRP,
        AV_PIX_FMT_GBRP9,
        AV_PIX_FMT_GBRP10,
        AV_PIX_FMT_NONE
    };

    AVFilterFormats *fmts_list = FUNC1(pix_fmts);
    if (!fmts_list)
        return FUNC0(ENOMEM);
    return FUNC2(ctx, fmts_list);
}