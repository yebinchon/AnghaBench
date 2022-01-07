
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_31__ TYPE_6__ ;
typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;


typedef enum ColorMode { ____Placeholder_ColorMode } ColorMode ;
typedef enum AVColorSpace { ____Placeholder_AVColorSpace } AVColorSpace ;
struct TYPE_27__ {int c7; int c6; int c5; int c4; int c3; int c2; TYPE_4__* dst; TYPE_4__* src; int member_0; } ;
typedef TYPE_2__ ThreadData ;
struct TYPE_31__ {TYPE_1__* internal; TYPE_5__** outputs; TYPE_3__* priv; } ;
struct TYPE_30__ {int h; int w; TYPE_6__* dst; } ;
struct TYPE_29__ {int colorspace; scalar_t__ format; int height; } ;
struct TYPE_28__ {int source; int mode; int dest; int *** yuv_convert; } ;
struct TYPE_26__ {int (* execute ) (TYPE_6__*,int ,TYPE_2__*,int *,int ) ;} ;
typedef TYPE_3__ ColorMatrixContext ;
typedef TYPE_4__ AVFrame ;
typedef TYPE_5__ AVFilterLink ;
typedef TYPE_6__ AVFilterContext ;
 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 scalar_t__ AV_PIX_FMT_YUV420P ;
 scalar_t__ AV_PIX_FMT_YUV422P ;
 scalar_t__ AV_PIX_FMT_YUV444P ;




 int COLOR_MODE_NONE ;

 int EINVAL ;
 int ENOMEM ;
 int FFMIN (int,int ) ;
 int av_frame_copy_props (TYPE_4__*,TYPE_4__*) ;
 int av_frame_free (TYPE_4__**) ;
 int av_log (TYPE_6__*,int ,char*) ;
 int ff_filter_frame (TYPE_5__*,TYPE_4__*) ;
 int ff_filter_get_nb_threads (TYPE_6__*) ;
 TYPE_4__* ff_get_video_buffer (TYPE_5__*,int ,int ) ;
 int process_slice_uyvy422 ;
 int process_slice_yuv420p ;
 int process_slice_yuv422p ;
 int process_slice_yuv444p ;
 int stub1 (TYPE_6__*,int ,TYPE_2__*,int *,int ) ;
 int stub2 (TYPE_6__*,int ,TYPE_2__*,int *,int ) ;
 int stub3 (TYPE_6__*,int ,TYPE_2__*,int *,int ) ;
 int stub4 (TYPE_6__*,int ,TYPE_2__*,int *,int ) ;

__attribute__((used)) static int filter_frame(AVFilterLink *link, AVFrame *in)
{
    AVFilterContext *ctx = link->dst;
    ColorMatrixContext *color = ctx->priv;
    AVFilterLink *outlink = ctx->outputs[0];
    AVFrame *out;
    ThreadData td = {0};

    out = ff_get_video_buffer(outlink, outlink->w, outlink->h);
    if (!out) {
        av_frame_free(&in);
        return AVERROR(ENOMEM);
    }
    av_frame_copy_props(out, in);

    if (color->source == COLOR_MODE_NONE) {
        enum AVColorSpace cs = in->colorspace;
        enum ColorMode source;

        switch(cs) {
        case 136 : source = 130 ; break;
        case 135 : source = 129 ; break;
        case 133 : source = 128 ; break;
        case 137 : source = 131 ; break;
        case 134 : source = 131 ; break;
        case 138: source = 132 ; break;
        case 139 : source = 132 ; break;
        default :
            av_log(ctx, AV_LOG_ERROR, "Input frame does not specify a supported colorspace, and none has been specified as source either\n");
            av_frame_free(&out);
            return AVERROR(EINVAL);
        }
        color->mode = source * 5 + color->dest;
    } else
        color->mode = color->source * 5 + color->dest;

    switch(color->dest) {
    case 130 : out->colorspace = 136 ; break;
    case 129 : out->colorspace = 135 ; break;
    case 128: out->colorspace = 133 ; break;
    case 131 : out->colorspace = 137 ; break;
    case 132 : out->colorspace = 138; break;
    }

    td.src = in;
    td.dst = out;
    td.c2 = color->yuv_convert[color->mode][0][1];
    td.c3 = color->yuv_convert[color->mode][0][2];
    td.c4 = color->yuv_convert[color->mode][1][1];
    td.c5 = color->yuv_convert[color->mode][1][2];
    td.c6 = color->yuv_convert[color->mode][2][1];
    td.c7 = color->yuv_convert[color->mode][2][2];

    if (in->format == AV_PIX_FMT_YUV444P)
        ctx->internal->execute(ctx, process_slice_yuv444p, &td, ((void*)0),
                               FFMIN(in->height, ff_filter_get_nb_threads(ctx)));
    else if (in->format == AV_PIX_FMT_YUV422P)
        ctx->internal->execute(ctx, process_slice_yuv422p, &td, ((void*)0),
                               FFMIN(in->height, ff_filter_get_nb_threads(ctx)));
    else if (in->format == AV_PIX_FMT_YUV420P)
        ctx->internal->execute(ctx, process_slice_yuv420p, &td, ((void*)0),
                               FFMIN(in->height / 2, ff_filter_get_nb_threads(ctx)));
    else
        ctx->internal->execute(ctx, process_slice_uyvy422, &td, ((void*)0),
                               FFMIN(in->height, ff_filter_get_nb_threads(ctx)));

    av_frame_free(&in);
    return ff_filter_frame(outlink, out);
}
