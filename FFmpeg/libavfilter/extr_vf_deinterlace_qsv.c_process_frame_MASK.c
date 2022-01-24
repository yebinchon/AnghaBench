#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * mfxSyncPoint ;
typedef  scalar_t__ mfxStatus ;
struct TYPE_20__ {int /*<<< orphan*/  PicStruct; int /*<<< orphan*/  CropH; int /*<<< orphan*/  CropW; } ;
struct TYPE_21__ {TYPE_1__ Info; } ;
typedef  TYPE_2__ mfxFrameSurface1 ;
struct TYPE_25__ {TYPE_5__** outputs; TYPE_5__** inputs; TYPE_3__* priv; } ;
struct TYPE_24__ {int /*<<< orphan*/  time_base; int /*<<< orphan*/  h; int /*<<< orphan*/  w; } ;
struct TYPE_23__ {scalar_t__ pts; scalar_t__ interlaced_frame; int /*<<< orphan*/  height; int /*<<< orphan*/  width; scalar_t__* data; } ;
struct TYPE_22__ {scalar_t__ last_pts; int /*<<< orphan*/  session; } ;
typedef  TYPE_3__ QSVDeintContext ;
typedef  TYPE_4__ AVFrame ;
typedef  TYPE_5__ AVFilterLink ;
typedef  TYPE_6__ AVFilterContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_UNKNOWN ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,TYPE_2__*,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ MFX_ERR_MORE_DATA ; 
 scalar_t__ MFX_ERR_MORE_SURFACE ; 
 int /*<<< orphan*/  MFX_PICSTRUCT_PROGRESSIVE ; 
 scalar_t__ MFX_WRN_DEVICE_BUSY ; 
 scalar_t__ MFX_WRN_IN_EXECUTION ; 
 int QSVDEINT_MORE_INPUT ; 
 int QSVDEINT_MORE_OUTPUT ; 
 int FUNC3 (TYPE_4__*,TYPE_4__ const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__**) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int FUNC8 (TYPE_5__*,TYPE_4__*) ; 
 TYPE_4__* FUNC9 (TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(AVFilterContext *ctx, const AVFrame *in,
                         mfxFrameSurface1 *surf_in)
{
    QSVDeintContext    *s = ctx->priv;
    AVFilterLink  *inlink = ctx->inputs[0];
    AVFilterLink *outlink = ctx->outputs[0];

    AVFrame *out;
    mfxFrameSurface1 *surf_out;
    mfxSyncPoint sync = NULL;
    mfxStatus err;
    int ret, again = 0;

    out = FUNC9(outlink, outlink->w, outlink->h);
    if (!out) {
        ret = FUNC0(ENOMEM);
        goto fail;
    }

    surf_out = (mfxFrameSurface1*)out->data[3];
    surf_out->Info.CropW     = outlink->w;
    surf_out->Info.CropH     = outlink->h;
    surf_out->Info.PicStruct = MFX_PICSTRUCT_PROGRESSIVE;

    do {
        err = FUNC2(s->session, surf_in, surf_out,
                                           NULL, &sync);
        if (err == MFX_WRN_DEVICE_BUSY)
            FUNC7(1);
    } while (err == MFX_WRN_DEVICE_BUSY);

    if (err == MFX_ERR_MORE_DATA) {
        FUNC4(&out);
        return QSVDEINT_MORE_INPUT;
    }

    if ((err < 0 && err != MFX_ERR_MORE_SURFACE) || !sync) {
        FUNC5(ctx, AV_LOG_ERROR, "Error during deinterlacing: %d\n", err);
        ret = AVERROR_UNKNOWN;
        goto fail;
    }
    if (err == MFX_ERR_MORE_SURFACE)
        again = 1;

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

    out->width            = outlink->w;
    out->height           = outlink->h;
    out->interlaced_frame = 0;

    out->pts = FUNC6(out->pts, inlink->time_base, outlink->time_base);
    if (out->pts == s->last_pts)
        out->pts++;
    s->last_pts = out->pts;

    ret = FUNC8(outlink, out);
    if (ret < 0)
        return ret;

    return again ? QSVDEINT_MORE_OUTPUT : 0;
fail:
    FUNC4(&out);
    return ret;
}