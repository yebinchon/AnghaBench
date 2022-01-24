#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  params ;
typedef  scalar_t__ VAStatus ;
struct TYPE_13__ {scalar_t__ algorithm; scalar_t__ flags; int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ VAProcFilterParameterBufferDeinterlacing ;
struct TYPE_16__ {scalar_t__ num_backward_references; scalar_t__ num_forward_references; } ;
struct TYPE_14__ {int nb_deint_caps; scalar_t__ mode; int extra_delay_for_timestamps; int field_rate; scalar_t__ queue_depth; TYPE_6__ pipeline_caps; int /*<<< orphan*/ * filter_buffers; int /*<<< orphan*/  va_context; TYPE_1__* hwctx; TYPE_7__* deint_caps; } ;
typedef  TYPE_3__ VAAPIVPPContext ;
struct TYPE_17__ {scalar_t__ type; } ;
struct TYPE_15__ {TYPE_3__* priv; } ;
struct TYPE_12__ {int /*<<< orphan*/  display; } ;
typedef  TYPE_3__ DeintVAAPIContext ;
typedef  TYPE_5__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_VERBOSE ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  ENOSYS ; 
 scalar_t__ MAX_REFERENCES ; 
 int VAProcDeinterlacingCount ; 
 scalar_t__ VAProcDeinterlacingNone ; 
 int /*<<< orphan*/  VAProcFilterDeinterlacing ; 
 int /*<<< orphan*/  VAProcFilterParameterBufferType ; 
 scalar_t__ VA_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*,int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (TYPE_5__*,int /*<<< orphan*/ ,TYPE_2__*,int,int) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_7__**,int*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,TYPE_6__*) ; 

__attribute__((used)) static int FUNC7(AVFilterContext *avctx)
{
    VAAPIVPPContext *vpp_ctx = avctx->priv;
    DeintVAAPIContext *ctx   = avctx->priv;
    VAStatus vas;
    VAProcFilterParameterBufferDeinterlacing params;
    int i;

    ctx->nb_deint_caps = VAProcDeinterlacingCount;
    vas = FUNC5(vpp_ctx->hwctx->display,
                                     vpp_ctx->va_context,
                                     VAProcFilterDeinterlacing,
                                     &ctx->deint_caps,
                                     &ctx->nb_deint_caps);
    if (vas != VA_STATUS_SUCCESS) {
        FUNC1(avctx, AV_LOG_ERROR, "Failed to query deinterlacing "
               "caps: %d (%s).\n", vas, FUNC4(vas));
        return FUNC0(EIO);
    }

    if (ctx->mode == VAProcDeinterlacingNone) {
        for (i = 0; i < ctx->nb_deint_caps; i++) {
            if (ctx->deint_caps[i].type > ctx->mode)
                ctx->mode = ctx->deint_caps[i].type;
        }
        FUNC1(avctx, AV_LOG_VERBOSE, "Picking %d (%s) as default "
               "deinterlacing mode.\n", ctx->mode,
               FUNC2(ctx->mode));
    } else {
        for (i = 0; i < ctx->nb_deint_caps; i++) {
            if (ctx->deint_caps[i].type == ctx->mode)
                break;
        }
        if (i >= ctx->nb_deint_caps) {
            FUNC1(avctx, AV_LOG_ERROR, "Deinterlacing mode %d (%s) is "
                   "not supported.\n", ctx->mode,
                   FUNC2(ctx->mode));
            return FUNC0(EINVAL);
        }
    }

    params.type      = VAProcFilterDeinterlacing;
    params.algorithm = ctx->mode;
    params.flags     = 0;

    vas = FUNC3(avctx,
                                          VAProcFilterParameterBufferType,
                                          &params,
                                          sizeof(params),
                                          1);
    if (vas)
        return vas;

    vas = FUNC6(vpp_ctx->hwctx->display,
                                       vpp_ctx->va_context,
                                       &vpp_ctx->filter_buffers[0], 1,
                                       &ctx->pipeline_caps);
    if (vas != VA_STATUS_SUCCESS) {
        FUNC1(avctx, AV_LOG_ERROR, "Failed to query pipeline "
               "caps: %d (%s).\n", vas, FUNC4(vas));
        return FUNC0(EIO);
    }

    ctx->extra_delay_for_timestamps = ctx->field_rate == 2 &&
        ctx->pipeline_caps.num_backward_references == 0;

    ctx->queue_depth = ctx->pipeline_caps.num_backward_references +
                       ctx->pipeline_caps.num_forward_references +
                       ctx->extra_delay_for_timestamps + 1;
    if (ctx->queue_depth > MAX_REFERENCES) {
        FUNC1(avctx, AV_LOG_ERROR, "Pipeline requires too many "
               "references (%u forward, %u back).\n",
               ctx->pipeline_caps.num_forward_references,
               ctx->pipeline_caps.num_backward_references);
        return FUNC0(ENOSYS);
    }

    return 0;
}