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
#define  AV_PIX_FMT_GBRAP 165 
#define  AV_PIX_FMT_GBRP 164 
#define  AV_PIX_FMT_GBRP10 163 
#define  AV_PIX_FMT_GBRP12 162 
#define  AV_PIX_FMT_GBRP14 161 
#define  AV_PIX_FMT_GBRP16 160 
#define  AV_PIX_FMT_GBRP9 159 
#define  AV_PIX_FMT_GRAY16 158 
#define  AV_PIX_FMT_GRAY8 157 
#define  AV_PIX_FMT_NONE 156 
#define  AV_PIX_FMT_YUV410P 155 
#define  AV_PIX_FMT_YUV411P 154 
#define  AV_PIX_FMT_YUV420P 153 
#define  AV_PIX_FMT_YUV420P10 152 
#define  AV_PIX_FMT_YUV420P12 151 
#define  AV_PIX_FMT_YUV420P14 150 
#define  AV_PIX_FMT_YUV420P16 149 
#define  AV_PIX_FMT_YUV420P9 148 
#define  AV_PIX_FMT_YUV422P 147 
#define  AV_PIX_FMT_YUV422P10 146 
#define  AV_PIX_FMT_YUV422P12 145 
#define  AV_PIX_FMT_YUV422P14 144 
#define  AV_PIX_FMT_YUV422P16 143 
#define  AV_PIX_FMT_YUV422P9 142 
#define  AV_PIX_FMT_YUV440P 141 
#define  AV_PIX_FMT_YUV444P 140 
#define  AV_PIX_FMT_YUV444P10 139 
#define  AV_PIX_FMT_YUV444P12 138 
#define  AV_PIX_FMT_YUV444P14 137 
#define  AV_PIX_FMT_YUV444P16 136 
#define  AV_PIX_FMT_YUV444P9 135 
#define  AV_PIX_FMT_YUVA420P 134 
#define  AV_PIX_FMT_YUVA422P 133 
#define  AV_PIX_FMT_YUVA444P 132 
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
        AV_PIX_FMT_YUV420P,
        AV_PIX_FMT_YUV422P,
        AV_PIX_FMT_YUV444P,
        AV_PIX_FMT_YUV410P,
        AV_PIX_FMT_YUV411P,
        AV_PIX_FMT_GRAY8,
        AV_PIX_FMT_YUVJ420P,
        AV_PIX_FMT_YUVJ422P,
        AV_PIX_FMT_YUVJ444P,
        AV_PIX_FMT_GRAY16,
        AV_PIX_FMT_YUV440P,
        AV_PIX_FMT_YUVJ440P,
        AV_PIX_FMT_YUV420P9,
        AV_PIX_FMT_YUV422P9,
        AV_PIX_FMT_YUV444P9,
        AV_PIX_FMT_YUV420P10,
        AV_PIX_FMT_YUV422P10,
        AV_PIX_FMT_YUV444P10,
        AV_PIX_FMT_YUV420P12,
        AV_PIX_FMT_YUV422P12,
        AV_PIX_FMT_YUV444P12,
        AV_PIX_FMT_YUV420P14,
        AV_PIX_FMT_YUV422P14,
        AV_PIX_FMT_YUV444P14,
        AV_PIX_FMT_YUV420P16,
        AV_PIX_FMT_YUV422P16,
        AV_PIX_FMT_YUV444P16,
        AV_PIX_FMT_YUVA420P,
        AV_PIX_FMT_YUVA422P,
        AV_PIX_FMT_YUVA444P,
        AV_PIX_FMT_GBRP,
        AV_PIX_FMT_GBRP9,
        AV_PIX_FMT_GBRP10,
        AV_PIX_FMT_GBRP12,
        AV_PIX_FMT_GBRP14,
        AV_PIX_FMT_GBRP16,
        AV_PIX_FMT_GBRAP,
        AV_PIX_FMT_NONE
    };

    AVFilterFormats *fmts_list = FUNC1(pix_fmts);
    if (!fmts_list)
        return FUNC0(ENOMEM);
    return FUNC2(ctx, fmts_list);
}