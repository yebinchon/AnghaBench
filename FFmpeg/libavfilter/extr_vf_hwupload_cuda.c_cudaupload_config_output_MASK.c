#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {scalar_t__ data; } ;
struct TYPE_13__ {TYPE_1__* priv; TYPE_3__** inputs; } ;
struct TYPE_12__ {int /*<<< orphan*/  hw_frames_ctx; int /*<<< orphan*/  h; int /*<<< orphan*/  w; int /*<<< orphan*/  format; TYPE_4__* src; } ;
struct TYPE_11__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  sw_format; int /*<<< orphan*/  format; } ;
struct TYPE_10__ {TYPE_6__* hwframe; int /*<<< orphan*/  hwdevice; } ;
typedef  TYPE_1__ CudaUploadContext ;
typedef  TYPE_2__ AVHWFramesContext ;
typedef  TYPE_3__ AVFilterLink ;
typedef  TYPE_4__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_PIX_FMT_CUDA ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__**) ; 
 TYPE_6__* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_6__*) ; 

__attribute__((used)) static int FUNC5(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    AVFilterLink *inlink = ctx->inputs[0];
    CudaUploadContext *s = ctx->priv;

    AVHWFramesContext *hwframe_ctx;
    int ret;

    FUNC2(&s->hwframe);
    s->hwframe = FUNC3(s->hwdevice);
    if (!s->hwframe)
        return FUNC0(ENOMEM);

    hwframe_ctx            = (AVHWFramesContext*)s->hwframe->data;
    hwframe_ctx->format    = AV_PIX_FMT_CUDA;
    hwframe_ctx->sw_format = inlink->format;
    hwframe_ctx->width     = inlink->w;
    hwframe_ctx->height    = inlink->h;

    ret = FUNC4(s->hwframe);
    if (ret < 0)
        return ret;

    outlink->hw_frames_ctx = FUNC1(s->hwframe);
    if (!outlink->hw_frames_ctx)
        return FUNC0(ENOMEM);

    return 0;
}