#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;
typedef  struct TYPE_12__   TYPE_11__ ;

/* Type definitions */
struct TYPE_17__ {int /*<<< orphan*/  hw_frames_ctx; } ;
struct TYPE_16__ {scalar_t__ hw_device_ctx; scalar_t__ hw_frames_ctx; TYPE_3__* hwaccel_context; } ;
struct TYPE_15__ {int /*<<< orphan*/  session; } ;
struct TYPE_12__ {int /*<<< orphan*/  session; } ;
struct TYPE_13__ {scalar_t__ IOPattern; } ;
struct TYPE_14__ {TYPE_11__ internal_qs; int /*<<< orphan*/  session; int /*<<< orphan*/  load_plugins; TYPE_8__ frames_ctx; TYPE_1__ param; } ;
typedef  TYPE_2__ QSVEncContext ;
typedef  TYPE_3__ AVQSVContext ;
typedef  TYPE_4__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  MFX_GPUCOPY_OFF ; 
 scalar_t__ MFX_IOPATTERN_IN_OPAQUE_MEMORY ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (TYPE_4__*,TYPE_11__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_4__*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (TYPE_4__*,int /*<<< orphan*/ *,TYPE_8__*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(AVCodecContext *avctx, QSVEncContext *q)
{
    int ret;

    if (avctx->hwaccel_context) {
        AVQSVContext *qsv = avctx->hwaccel_context;
        q->session = qsv->session;
    } else if (avctx->hw_frames_ctx) {
        q->frames_ctx.hw_frames_ctx = FUNC1(avctx->hw_frames_ctx);
        if (!q->frames_ctx.hw_frames_ctx)
            return FUNC0(ENOMEM);

        ret = FUNC5(avctx, &q->internal_qs.session,
                                         &q->frames_ctx, q->load_plugins,
                                         q->param.IOPattern == MFX_IOPATTERN_IN_OPAQUE_MEMORY,
                                         MFX_GPUCOPY_OFF);
        if (ret < 0) {
            FUNC2(&q->frames_ctx.hw_frames_ctx);
            return ret;
        }

        q->session = q->internal_qs.session;
    } else if (avctx->hw_device_ctx) {
        ret = FUNC4(avctx, &q->internal_qs.session,
                                         avctx->hw_device_ctx, q->load_plugins,
                                         MFX_GPUCOPY_OFF);
        if (ret < 0)
            return ret;

        q->session = q->internal_qs.session;
    } else {
        ret = FUNC3(avctx, &q->internal_qs,
                                           q->load_plugins, MFX_GPUCOPY_OFF);
        if (ret < 0)
            return ret;

        q->session = q->internal_qs.session;
    }

    return 0;
}