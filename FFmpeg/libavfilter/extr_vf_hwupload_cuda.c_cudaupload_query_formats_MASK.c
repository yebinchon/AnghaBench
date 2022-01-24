#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
struct TYPE_7__ {TYPE_1__** outputs; TYPE_2__** inputs; } ;
struct TYPE_6__ {int /*<<< orphan*/  out_formats; } ;
struct TYPE_5__ {int /*<<< orphan*/  in_formats; } ;
typedef  int /*<<< orphan*/  AVFilterFormats ;
typedef  TYPE_3__ AVFilterContext ;

/* Variables and functions */
#define  AV_PIX_FMT_0BGR32 137 
#define  AV_PIX_FMT_0RGB32 136 
#define  AV_PIX_FMT_CUDA 135 
#define  AV_PIX_FMT_NONE 134 
#define  AV_PIX_FMT_NV12 133 
#define  AV_PIX_FMT_P010 132 
#define  AV_PIX_FMT_P016 131 
#define  AV_PIX_FMT_YUV420P 130 
#define  AV_PIX_FMT_YUV444P 129 
#define  AV_PIX_FMT_YUV444P16 128 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int const*) ; 

__attribute__((used)) static int FUNC2(AVFilterContext *ctx)
{
    int ret;

    static const enum AVPixelFormat input_pix_fmts[] = {
        AV_PIX_FMT_NV12, AV_PIX_FMT_YUV420P, AV_PIX_FMT_YUV444P,
        AV_PIX_FMT_P010, AV_PIX_FMT_P016, AV_PIX_FMT_YUV444P16,
        AV_PIX_FMT_0RGB32, AV_PIX_FMT_0BGR32,
        AV_PIX_FMT_NONE,
    };
    static const enum AVPixelFormat output_pix_fmts[] = {
        AV_PIX_FMT_CUDA, AV_PIX_FMT_NONE,
    };
    AVFilterFormats *in_fmts  = FUNC1(input_pix_fmts);
    AVFilterFormats *out_fmts;

    ret = FUNC0(in_fmts, &ctx->inputs[0]->out_formats);
    if (ret < 0)
        return ret;

    out_fmts = FUNC1(output_pix_fmts);

    ret = FUNC0(out_fmts, &ctx->outputs[0]->in_formats);
    if (ret < 0)
        return ret;

    return 0;
}