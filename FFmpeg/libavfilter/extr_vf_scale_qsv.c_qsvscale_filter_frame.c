
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int * mfxSyncPoint ;
typedef scalar_t__ mfxStatus ;
typedef int mfxFrameSurface1 ;
typedef int int64_t ;
struct TYPE_20__ {TYPE_4__** outputs; TYPE_2__* priv; } ;
struct TYPE_19__ {int w; int h; TYPE_5__* dst; } ;
struct TYPE_16__ {scalar_t__ den; scalar_t__ num; } ;
struct TYPE_18__ {int width; int height; TYPE_1__ sample_aspect_ratio; scalar_t__* data; } ;
struct TYPE_17__ {int session; } ;
typedef TYPE_2__ QSVScaleContext ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVFilterLink ;
typedef TYPE_5__ AVFilterContext ;


 int AVERROR (int ) ;
 int AVERROR_UNKNOWN ;
 int AV_LOG_ERROR ;
 int ENOMEM ;
 int INT_MAX ;
 scalar_t__ MFXVideoCORE_SyncOperation (int ,int *,int) ;
 scalar_t__ MFXVideoVPP_RunFrameVPPAsync (int ,int *,int *,int *,int **) ;
 scalar_t__ MFX_WRN_DEVICE_BUSY ;
 scalar_t__ MFX_WRN_IN_EXECUTION ;
 int av_frame_copy_props (TYPE_3__*,TYPE_3__*) ;
 int av_frame_free (TYPE_3__**) ;
 int av_log (TYPE_5__*,int ,char*,...) ;
 int av_reduce (scalar_t__*,scalar_t__*,int,int,int ) ;
 int av_usleep (int) ;
 int ff_filter_frame (TYPE_4__*,TYPE_3__*) ;
 TYPE_3__* ff_get_video_buffer (TYPE_4__*,int,int) ;

__attribute__((used)) static int qsvscale_filter_frame(AVFilterLink *link, AVFrame *in)
{
    AVFilterContext *ctx = link->dst;
    QSVScaleContext *s = ctx->priv;
    AVFilterLink *outlink = ctx->outputs[0];

    mfxSyncPoint sync = ((void*)0);
    mfxStatus err;

    AVFrame *out = ((void*)0);
    int ret = 0;

    out = ff_get_video_buffer(outlink, outlink->w, outlink->h);
    if (!out) {
        ret = AVERROR(ENOMEM);
        goto fail;
    }

    do {
        err = MFXVideoVPP_RunFrameVPPAsync(s->session,
                                           (mfxFrameSurface1*)in->data[3],
                                           (mfxFrameSurface1*)out->data[3],
                                           ((void*)0), &sync);
        if (err == MFX_WRN_DEVICE_BUSY)
            av_usleep(1);
    } while (err == MFX_WRN_DEVICE_BUSY);

    if (err < 0 || !sync) {
        av_log(ctx, AV_LOG_ERROR, "Error during scaling\n");
        ret = AVERROR_UNKNOWN;
        goto fail;
    }

    do {
        err = MFXVideoCORE_SyncOperation(s->session, sync, 1000);
    } while (err == MFX_WRN_IN_EXECUTION);
    if (err < 0) {
        av_log(ctx, AV_LOG_ERROR, "Error synchronizing the operation: %d\n", err);
        ret = AVERROR_UNKNOWN;
        goto fail;
    }

    ret = av_frame_copy_props(out, in);
    if (ret < 0)
        goto fail;

    out->width = outlink->w;
    out->height = outlink->h;

    av_reduce(&out->sample_aspect_ratio.num, &out->sample_aspect_ratio.den,
              (int64_t)in->sample_aspect_ratio.num * outlink->h * link->w,
              (int64_t)in->sample_aspect_ratio.den * outlink->w * link->h,
              INT_MAX);

    av_frame_free(&in);
    return ff_filter_frame(outlink, out);
fail:
    av_frame_free(&in);
    av_frame_free(&out);
    return ret;
}
