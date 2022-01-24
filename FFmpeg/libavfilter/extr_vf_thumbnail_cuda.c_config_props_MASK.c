#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_9__ ;
typedef  struct TYPE_23__   TYPE_8__ ;
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_11__ ;
typedef  struct TYPE_14__   TYPE_10__ ;

/* Type definitions */
struct TYPE_21__ {int /*<<< orphan*/  tb; int /*<<< orphan*/  hw_frames_ctx; int /*<<< orphan*/  data; int /*<<< orphan*/  cu_module; int /*<<< orphan*/  cu_func_ushort2; int /*<<< orphan*/  cu_func_ushort; int /*<<< orphan*/  cu_func_uchar2; int /*<<< orphan*/  cu_func_uchar; TYPE_11__* hwctx; int /*<<< orphan*/  cu_stream; } ;
typedef  TYPE_6__ ThumbnailCudaContext ;
struct TYPE_24__ {int /*<<< orphan*/  time_base; TYPE_1__* hw_frames_ctx; TYPE_10__* dst; } ;
struct TYPE_23__ {int /*<<< orphan*/  sw_format; TYPE_2__* device_ctx; } ;
struct TYPE_22__ {int /*<<< orphan*/  (* cuCtxPopCurrent ) (int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* cuMemAlloc ) (int /*<<< orphan*/ *,int) ;int /*<<< orphan*/  (* cuModuleGetFunction ) (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ;int /*<<< orphan*/  (* cuModuleLoadData ) (int /*<<< orphan*/ *,char*) ;int /*<<< orphan*/  (* cuCtxPushCurrent ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_20__ {int /*<<< orphan*/  hw_frames_ctx; } ;
struct TYPE_19__ {int /*<<< orphan*/  hw_frames_ctx; } ;
struct TYPE_18__ {TYPE_7__* cuda_dl; } ;
struct TYPE_17__ {TYPE_11__* hwctx; } ;
struct TYPE_16__ {scalar_t__ data; } ;
struct TYPE_15__ {int /*<<< orphan*/  stream; TYPE_3__* internal; int /*<<< orphan*/  cuda_ctx; } ;
struct TYPE_14__ {TYPE_5__** outputs; TYPE_4__** inputs; TYPE_6__* priv; } ;
typedef  TYPE_7__ CudaFunctions ;
typedef  int /*<<< orphan*/  CUcontext ;
typedef  TYPE_8__ AVHWFramesContext ;
typedef  TYPE_9__ AVFilterLink ;
typedef  TYPE_10__ AVFilterContext ;
typedef  TYPE_11__ AVCUDADeviceContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  ENOSYS ; 
 int HIST_SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_10__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(AVFilterLink *inlink)
{
    AVFilterContext *ctx = inlink->dst;
    ThumbnailCudaContext *s = ctx->priv;
    AVHWFramesContext     *hw_frames_ctx = (AVHWFramesContext*)inlink->hw_frames_ctx->data;
    AVCUDADeviceContext *device_hwctx = hw_frames_ctx->device_ctx->hwctx;
    CUcontext dummy, cuda_ctx = device_hwctx->cuda_ctx;
    CudaFunctions *cu = device_hwctx->internal->cuda_dl;
    int ret;

    extern char vf_thumbnail_cuda_ptx[];

    s->hwctx = device_hwctx;
    s->cu_stream = s->hwctx->stream;

    ret = FUNC1(cu->cuCtxPushCurrent(cuda_ctx));
    if (ret < 0)
        return ret;

    ret = FUNC1(cu->cuModuleLoadData(&s->cu_module, vf_thumbnail_cuda_ptx));
    if (ret < 0)
        return ret;

    ret = FUNC1(cu->cuModuleGetFunction(&s->cu_func_uchar, s->cu_module, "Thumbnail_uchar"));
    if (ret < 0)
        return ret;

    ret = FUNC1(cu->cuModuleGetFunction(&s->cu_func_uchar2, s->cu_module, "Thumbnail_uchar2"));
    if (ret < 0)
        return ret;

    ret = FUNC1(cu->cuModuleGetFunction(&s->cu_func_ushort, s->cu_module, "Thumbnail_ushort"));
    if (ret < 0)
        return ret;

    ret = FUNC1(cu->cuModuleGetFunction(&s->cu_func_ushort2, s->cu_module, "Thumbnail_ushort2"));
    if (ret < 0)
        return ret;

    ret = FUNC1(cu->cuMemAlloc(&s->data, HIST_SIZE * sizeof(int)));
    if (ret < 0)
        return ret;

    FUNC1(cu->cuCtxPopCurrent(&dummy));

    s->hw_frames_ctx = ctx->inputs[0]->hw_frames_ctx;

    ctx->outputs[0]->hw_frames_ctx = FUNC2(s->hw_frames_ctx);
    if (!ctx->outputs[0]->hw_frames_ctx)
        return FUNC0(ENOMEM);

    s->tb = inlink->time_base;

    if (!FUNC5(hw_frames_ctx->sw_format)) {
        FUNC4(ctx, AV_LOG_ERROR, "Unsupported input format: %s\n", FUNC3(hw_frames_ctx->sw_format));
        return FUNC0(ENOSYS);
    }

    return 0;
}