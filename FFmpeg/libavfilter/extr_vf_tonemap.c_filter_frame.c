
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_8__ ;
typedef struct TYPE_31__ TYPE_7__ ;
typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;


struct TYPE_27__ {double peak; scalar_t__ desat; int * coeffs; } ;
typedef TYPE_3__ TonemapContext ;
struct TYPE_28__ {double peak; TYPE_5__ const* desc; TYPE_6__* in; TYPE_6__* out; } ;
typedef TYPE_4__ ThreadData ;
struct TYPE_32__ {TYPE_1__* internal; TYPE_7__** outputs; TYPE_3__* priv; } ;
struct TYPE_31__ {int h; int w; int format; TYPE_8__* dst; } ;
struct TYPE_30__ {scalar_t__ color_trc; size_t colorspace; int height; int* linesize; int width; scalar_t__* data; } ;
struct TYPE_29__ {int flags; TYPE_2__* comp; } ;
struct TYPE_26__ {int step; } ;
struct TYPE_25__ {int (* execute ) (TYPE_8__*,int ,TYPE_4__*,int *,int ) ;} ;
typedef TYPE_5__ AVPixFmtDescriptor ;
typedef TYPE_6__ AVFrame ;
typedef TYPE_7__ AVFilterLink ;
typedef TYPE_8__ AVFilterContext ;


 size_t AVCOL_SPC_UNSPECIFIED ;
 scalar_t__ AVCOL_TRC_LINEAR ;
 scalar_t__ AVCOL_TRC_UNSPECIFIED ;
 int AVERROR (int ) ;
 int AVERROR_BUG ;
 int AV_LOG_DEBUG ;
 int AV_LOG_WARNING ;
 int AV_PIX_FMT_FLAG_ALPHA ;
 int AV_WN32 (scalar_t__,int ) ;
 int ENOMEM ;
 int FFMIN (int,int ) ;
 int av_color_space_name (size_t) ;
 int av_float2int (float) ;
 int av_frame_copy_props (TYPE_6__*,TYPE_6__*) ;
 int av_frame_free (TYPE_6__**) ;
 int av_image_copy_plane (scalar_t__,int,scalar_t__,int,int,int ) ;
 int av_log (TYPE_3__*,int ,char*,...) ;
 TYPE_5__* av_pix_fmt_desc_get (int ) ;
 double ff_determine_signal_peak (TYPE_6__*) ;
 int ff_filter_frame (TYPE_7__*,TYPE_6__*) ;
 int ff_filter_get_nb_threads (TYPE_8__*) ;
 TYPE_6__* ff_get_video_buffer (TYPE_7__*,int ,int ) ;
 int ff_update_hdr_metadata (TYPE_6__*,double) ;
 int * luma_coefficients ;
 int stub1 (TYPE_8__*,int ,TYPE_4__*,int *,int ) ;
 int tonemap_slice ;

__attribute__((used)) static int filter_frame(AVFilterLink *link, AVFrame *in)
{
    AVFilterContext *ctx = link->dst;
    TonemapContext *s = ctx->priv;
    AVFilterLink *outlink = ctx->outputs[0];
    ThreadData td;
    AVFrame *out;
    const AVPixFmtDescriptor *desc = av_pix_fmt_desc_get(link->format);
    const AVPixFmtDescriptor *odesc = av_pix_fmt_desc_get(outlink->format);
    int ret, x, y;
    double peak = s->peak;

    if (!desc || !odesc) {
        av_frame_free(&in);
        return AVERROR_BUG;
    }

    out = ff_get_video_buffer(outlink, outlink->w, outlink->h);
    if (!out) {
        av_frame_free(&in);
        return AVERROR(ENOMEM);
    }

    ret = av_frame_copy_props(out, in);
    if (ret < 0) {
        av_frame_free(&in);
        av_frame_free(&out);
        return ret;
    }


    if (in->color_trc == AVCOL_TRC_UNSPECIFIED) {
        av_log(s, AV_LOG_WARNING, "Untagged transfer, assuming linear light\n");
        out->color_trc = AVCOL_TRC_LINEAR;
    } else if (in->color_trc != AVCOL_TRC_LINEAR)
        av_log(s, AV_LOG_WARNING, "Tonemapping works on linear light only\n");


    if (!peak) {
        peak = ff_determine_signal_peak(in);
        av_log(s, AV_LOG_DEBUG, "Computed signal peak: %f\n", peak);
    }


    s->coeffs = &luma_coefficients[in->colorspace];
    if (s->desat > 0 && (in->colorspace == AVCOL_SPC_UNSPECIFIED || !s->coeffs)) {
        if (in->colorspace == AVCOL_SPC_UNSPECIFIED)
            av_log(s, AV_LOG_WARNING, "Missing color space information, ");
        else if (!s->coeffs)
            av_log(s, AV_LOG_WARNING, "Unsupported color space '%s', ",
                   av_color_space_name(in->colorspace));
        av_log(s, AV_LOG_WARNING, "desaturation is disabled\n");
        s->desat = 0;
    }


    td.out = out;
    td.in = in;
    td.desc = desc;
    td.peak = peak;
    ctx->internal->execute(ctx, tonemap_slice, &td, ((void*)0), FFMIN(in->height, ff_filter_get_nb_threads(ctx)));


    if (desc->flags & AV_PIX_FMT_FLAG_ALPHA && odesc->flags & AV_PIX_FMT_FLAG_ALPHA) {
        av_image_copy_plane(out->data[3], out->linesize[3],
                            in->data[3], in->linesize[3],
                            out->linesize[3], outlink->h);
    } else if (odesc->flags & AV_PIX_FMT_FLAG_ALPHA) {
        for (y = 0; y < out->height; y++) {
            for (x = 0; x < out->width; x++) {
                AV_WN32(out->data[3] + x * odesc->comp[3].step + y * out->linesize[3],
                        av_float2int(1.0f));
            }
        }
    }

    av_frame_free(&in);

    ff_update_hdr_metadata(out, peak);

    return ff_filter_frame(outlink, out);
}
