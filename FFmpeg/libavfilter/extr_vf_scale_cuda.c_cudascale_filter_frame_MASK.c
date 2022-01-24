#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_8__ ;
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  int int64_t ;
struct TYPE_25__ {TYPE_7__** outputs; TYPE_5__* priv; } ;
struct TYPE_24__ {int h; int w; TYPE_8__* dst; } ;
struct TYPE_20__ {scalar_t__ den; scalar_t__ num; } ;
struct TYPE_23__ {TYPE_3__ sample_aspect_ratio; } ;
struct TYPE_22__ {TYPE_2__* hwctx; } ;
struct TYPE_21__ {int /*<<< orphan*/  (* cuCtxPopCurrent ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* cuCtxPushCurrent ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_19__ {int /*<<< orphan*/  cuda_ctx; TYPE_1__* internal; } ;
struct TYPE_18__ {TYPE_4__* cuda_dl; } ;
typedef  TYPE_4__ CudaFunctions ;
typedef  int /*<<< orphan*/  CUcontext ;
typedef  TYPE_5__ CUDAScaleContext ;
typedef  TYPE_6__ AVFrame ;
typedef  TYPE_7__ AVFilterLink ;
typedef  TYPE_8__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  INT_MAX ; 
 TYPE_6__* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__**) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__*,scalar_t__*,int,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_8__*,TYPE_6__*,TYPE_6__*) ; 
 int FUNC6 (TYPE_7__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(AVFilterLink *link, AVFrame *in)
{
    AVFilterContext       *ctx = link->dst;
    CUDAScaleContext        *s = ctx->priv;
    AVFilterLink      *outlink = ctx->outputs[0];
    CudaFunctions          *cu = s->hwctx->internal->cuda_dl;

    AVFrame *out = NULL;
    CUcontext dummy;
    int ret = 0;

    out = FUNC2();
    if (!out) {
        ret = FUNC0(ENOMEM);
        goto fail;
    }

    ret = FUNC1(cu->cuCtxPushCurrent(s->hwctx->cuda_ctx));
    if (ret < 0)
        goto fail;

    ret = FUNC5(ctx, out, in);

    FUNC1(cu->cuCtxPopCurrent(&dummy));
    if (ret < 0)
        goto fail;

    FUNC4(&out->sample_aspect_ratio.num, &out->sample_aspect_ratio.den,
              (int64_t)in->sample_aspect_ratio.num * outlink->h * link->w,
              (int64_t)in->sample_aspect_ratio.den * outlink->w * link->h,
              INT_MAX);

    FUNC3(&in);
    return FUNC6(outlink, out);
fail:
    FUNC3(&in);
    FUNC3(&out);
    return ret;
}