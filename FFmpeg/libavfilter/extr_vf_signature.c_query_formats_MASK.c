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
typedef  int /*<<< orphan*/  AVFilterContext ;

/* Variables and functions */
#define  AV_PIX_FMT_GRAY8 142 
#define  AV_PIX_FMT_NONE 141 
#define  AV_PIX_FMT_NV12 140 
#define  AV_PIX_FMT_NV21 139 
#define  AV_PIX_FMT_YUV410P 138 
#define  AV_PIX_FMT_YUV411P 137 
#define  AV_PIX_FMT_YUV420P 136 
#define  AV_PIX_FMT_YUV422P 135 
#define  AV_PIX_FMT_YUV440P 134 
#define  AV_PIX_FMT_YUV444P 133 
#define  AV_PIX_FMT_YUVJ411P 132 
#define  AV_PIX_FMT_YUVJ420P 131 
#define  AV_PIX_FMT_YUVJ422P 130 
#define  AV_PIX_FMT_YUVJ440P 129 
#define  AV_PIX_FMT_YUVJ444P 128 
 int /*<<< orphan*/  FUNC0 (int const*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(AVFilterContext *ctx)
{
    /* all formats with a separate gray value */
    static const enum AVPixelFormat pix_fmts[] = {
        AV_PIX_FMT_GRAY8,
        AV_PIX_FMT_YUV410P, AV_PIX_FMT_YUV411P,
        AV_PIX_FMT_YUV420P, AV_PIX_FMT_YUV422P,
        AV_PIX_FMT_YUV440P, AV_PIX_FMT_YUV444P,
        AV_PIX_FMT_YUVJ411P, AV_PIX_FMT_YUVJ420P,
        AV_PIX_FMT_YUVJ422P, AV_PIX_FMT_YUVJ444P,
        AV_PIX_FMT_YUVJ440P,
        AV_PIX_FMT_NV12, AV_PIX_FMT_NV21,
        AV_PIX_FMT_NONE
    };

    return FUNC1(ctx, FUNC0(pix_fmts));
}