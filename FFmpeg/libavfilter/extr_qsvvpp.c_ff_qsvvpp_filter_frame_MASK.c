#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_5__ ;
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;
typedef  struct TYPE_22__   TYPE_18__ ;
typedef  struct TYPE_21__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  mfxSyncPoint ;
struct TYPE_27__ {TYPE_4__** outputs; } ;
struct TYPE_26__ {int /*<<< orphan*/  time_base; TYPE_5__* dst; } ;
struct TYPE_25__ {TYPE_10__* frame; TYPE_18__* surface; } ;
struct TYPE_24__ {int (* filter_frame ) (TYPE_4__*,TYPE_10__*) ;int /*<<< orphan*/  session; } ;
struct TYPE_23__ {int /*<<< orphan*/  TimeStamp; } ;
struct TYPE_22__ {TYPE_1__ Data; } ;
struct TYPE_21__ {int /*<<< orphan*/  pts; } ;
typedef  TYPE_2__ QSVVPPContext ;
typedef  TYPE_3__ QSVFrame ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  TYPE_4__ AVFilterLink ;
typedef  TYPE_5__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_18__*,TYPE_18__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int MFX_ERR_MORE_DATA ; 
 int MFX_ERR_MORE_SURFACE ; 
 int MFX_WRN_DEVICE_BUSY ; 
 int /*<<< orphan*/  FUNC4 (TYPE_10__**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  default_tb ; 
 TYPE_3__* FUNC8 (TYPE_2__*,TYPE_4__*) ; 
 int FUNC9 (TYPE_4__*,TYPE_10__*) ; 
 TYPE_3__* FUNC10 (TYPE_2__*,TYPE_4__*,int /*<<< orphan*/ *) ; 

int FUNC11(QSVVPPContext *s, AVFilterLink *inlink, AVFrame *picref)
{
    AVFilterContext  *ctx     = inlink->dst;
    AVFilterLink     *outlink = ctx->outputs[0];
    mfxSyncPoint      sync;
    QSVFrame         *in_frame, *out_frame;
    int               ret, filter_ret;

    in_frame = FUNC10(s, inlink, picref);
    if (!in_frame) {
        FUNC5(ctx, AV_LOG_ERROR, "Failed to submit frame on input[%d]\n",
               FUNC1(inlink));
        return FUNC0(ENOMEM);
    }

    do {
        out_frame = FUNC8(s, outlink);
        if (!out_frame) {
            FUNC5(ctx, AV_LOG_ERROR, "Failed to query an output frame.\n");
            return FUNC0(ENOMEM);
        }

        do {
            ret = FUNC3(s->session, in_frame->surface,
                                               out_frame->surface, NULL, &sync);
            if (ret == MFX_WRN_DEVICE_BUSY)
                FUNC7(500);
        } while (ret == MFX_WRN_DEVICE_BUSY);

        if (ret < 0 && ret != MFX_ERR_MORE_SURFACE) {
            /* Ignore more_data error */
            if (ret == MFX_ERR_MORE_DATA)
                ret = FUNC0(EAGAIN);
            break;
        }

        if (FUNC2(s->session, sync, 1000) < 0)
            FUNC5(ctx, AV_LOG_WARNING, "Sync failed.\n");

        out_frame->frame->pts = FUNC6(out_frame->surface->Data.TimeStamp,
                                             default_tb, outlink->time_base);

        filter_ret = s->filter_frame(outlink, out_frame->frame);
        if (filter_ret < 0) {
            FUNC4(&out_frame->frame);
            ret = filter_ret;
            break;
        }
        out_frame->frame = NULL;
    } while(ret == MFX_ERR_MORE_SURFACE);

    return ret;
}