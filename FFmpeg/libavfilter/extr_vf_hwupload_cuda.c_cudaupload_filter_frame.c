
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_18__ {TYPE_2__** outputs; } ;
struct TYPE_17__ {int h; int w; TYPE_3__* dst; } ;
struct TYPE_16__ {int height; int width; } ;
typedef TYPE_1__ AVFrame ;
typedef TYPE_2__ AVFilterLink ;
typedef TYPE_3__ AVFilterContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int ENOMEM ;
 int av_frame_copy_props (TYPE_1__*,TYPE_1__*) ;
 int av_frame_free (TYPE_1__**) ;
 int av_hwframe_transfer_data (TYPE_1__*,TYPE_1__*,int ) ;
 int av_log (TYPE_3__*,int ,char*) ;
 int ff_filter_frame (TYPE_2__*,TYPE_1__*) ;
 TYPE_1__* ff_get_video_buffer (TYPE_2__*,int ,int ) ;

__attribute__((used)) static int cudaupload_filter_frame(AVFilterLink *link, AVFrame *in)
{
    AVFilterContext *ctx = link->dst;
    AVFilterLink *outlink = ctx->outputs[0];

    AVFrame *out = ((void*)0);
    int ret;

    out = ff_get_video_buffer(outlink, outlink->w, outlink->h);
    if (!out) {
        ret = AVERROR(ENOMEM);
        goto fail;
    }

    out->width = in->width;
    out->height = in->height;

    ret = av_hwframe_transfer_data(out, in, 0);
    if (ret < 0) {
        av_log(ctx, AV_LOG_ERROR, "Error transferring data to the GPU\n");
        goto fail;
    }

    ret = av_frame_copy_props(out, in);
    if (ret < 0)
        goto fail;

    av_frame_free(&in);

    return ff_filter_frame(ctx->outputs[0], out);
fail:
    av_frame_free(&in);
    av_frame_free(&out);
    return ret;
}
