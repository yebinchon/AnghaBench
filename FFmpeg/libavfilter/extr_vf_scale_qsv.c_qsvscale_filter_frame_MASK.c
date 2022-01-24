#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * mfxSyncPoint ;
typedef  scalar_t__ mfxStatus ;
typedef  int /*<<< orphan*/  mfxFrameSurface1 ;
typedef  int int64_t ;
struct TYPE_20__ {TYPE_4__** outputs; TYPE_2__* priv; } ;
struct TYPE_19__ {int w; int h; TYPE_5__* dst; } ;
struct TYPE_16__ {scalar_t__ den; scalar_t__ num; } ;
struct TYPE_18__ {int width; int height; TYPE_1__ sample_aspect_ratio; scalar_t__* data; } ;
struct TYPE_17__ {int /*<<< orphan*/  session; } ;
typedef  TYPE_2__ QSVScaleContext ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVFilterLink ;
typedef  TYPE_5__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_UNKNOWN ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  INT_MAX ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ MFX_WRN_DEVICE_BUSY ; 
 scalar_t__ MFX_WRN_IN_EXECUTION ; 
 int FUNC3 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*,scalar_t__*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (TYPE_4__*,TYPE_3__*) ; 
 TYPE_3__* FUNC9 (TYPE_4__*,int,int) ; 

__attribute__((used)) static int FUNC10(AVFilterLink *link, AVFrame *in)
{
    AVFilterContext             *ctx = link->dst;
    QSVScaleContext               *s = ctx->priv;
    AVFilterLink            *outlink = ctx->outputs[0];

    mfxSyncPoint sync = NULL;
    mfxStatus err;

    AVFrame *out = NULL;
    int ret = 0;

    out = FUNC9(outlink, outlink->w, outlink->h);
    if (!out) {
        ret = FUNC0(ENOMEM);
        goto fail;
    }

    do {
        err = FUNC2(s->session,
                                           (mfxFrameSurface1*)in->data[3],
                                           (mfxFrameSurface1*)out->data[3],
                                           NULL, &sync);
        if (err == MFX_WRN_DEVICE_BUSY)
            FUNC7(1);
    } while (err == MFX_WRN_DEVICE_BUSY);

    if (err < 0 || !sync) {
        FUNC5(ctx, AV_LOG_ERROR, "Error during scaling\n");
        ret = AVERROR_UNKNOWN;
        goto fail;
    }

    do {
        err = FUNC1(s->session, sync, 1000);
    } while (err == MFX_WRN_IN_EXECUTION);
    if (err < 0) {
        FUNC5(ctx, AV_LOG_ERROR, "Error synchronizing the operation: %d\n", err);
        ret = AVERROR_UNKNOWN;
        goto fail;
    }

    ret = FUNC3(out, in);
    if (ret < 0)
        goto fail;

    out->width  = outlink->w;
    out->height = outlink->h;

    FUNC6(&out->sample_aspect_ratio.num, &out->sample_aspect_ratio.den,
              (int64_t)in->sample_aspect_ratio.num * outlink->h * link->w,
              (int64_t)in->sample_aspect_ratio.den * outlink->w * link->h,
              INT_MAX);

    FUNC4(&in);
    return FUNC8(outlink, out);
fail:
    FUNC4(&in);
    FUNC4(&out);
    return ret;
}