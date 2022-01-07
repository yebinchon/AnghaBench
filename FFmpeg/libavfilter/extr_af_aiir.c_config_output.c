
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_18__ {int * outputs; TYPE_3__** inputs; TYPE_2__* priv; } ;
struct TYPE_17__ {int channels; int format; TYPE_4__* src; } ;
struct TYPE_16__ {int channels; int format; int process; int iir_channel; TYPE_1__* iir; int video; int h; int w; scalar_t__ response; int b_str; int a_str; int g_str; } ;
struct TYPE_15__ {int* nb_ab; int** ab; int g; } ;
typedef TYPE_1__ IIRChannel ;
typedef TYPE_2__ AudioIIRContext ;
typedef TYPE_3__ AVFilterLink ;
typedef TYPE_4__ AVFilterContext ;


 int AVERROR (int ) ;
 int AVERROR_PATCHWELCOME ;
 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;




 int ENOMEM ;
 TYPE_1__* av_calloc (int,int) ;
 int av_frame_free (int *) ;
 int av_log (TYPE_4__*,int ,char*) ;
 int convert_pd2zp (TYPE_4__*,int) ;
 int convert_pr2zp (TYPE_4__*,int) ;
 int convert_zp2tf (TYPE_4__*,int) ;
 int decompose_zp2biquads (TYPE_4__*,int) ;
 int draw_response (TYPE_4__*,int ) ;
 int ff_get_video_buffer (int ,int ,int ) ;
 int iir_ch_dblp ;
 int iir_ch_fltp ;
 int iir_ch_s16p ;
 int iir_ch_s32p ;
 int iir_ch_serial_dblp ;
 int iir_ch_serial_fltp ;
 int iir_ch_serial_s16p ;
 int iir_ch_serial_s32p ;
 int read_channels (TYPE_4__*,int,int ,int) ;
 int read_gains (TYPE_4__*,int ,int) ;

__attribute__((used)) static int config_output(AVFilterLink *outlink)
{
    AVFilterContext *ctx = outlink->src;
    AudioIIRContext *s = ctx->priv;
    AVFilterLink *inlink = ctx->inputs[0];
    int ch, ret, i;

    s->channels = inlink->channels;
    s->iir = av_calloc(s->channels, sizeof(*s->iir));
    if (!s->iir)
        return AVERROR(ENOMEM);

    ret = read_gains(ctx, s->g_str, inlink->channels);
    if (ret < 0)
        return ret;

    ret = read_channels(ctx, inlink->channels, s->a_str, 0);
    if (ret < 0)
        return ret;

    ret = read_channels(ctx, inlink->channels, s->b_str, 1);
    if (ret < 0)
        return ret;

    if (s->format == 2) {
        convert_pr2zp(ctx, inlink->channels);
    } else if (s->format == 3) {
        convert_pd2zp(ctx, inlink->channels);
    }

    av_frame_free(&s->video);
    if (s->response) {
        s->video = ff_get_video_buffer(ctx->outputs[1], s->w, s->h);
        if (!s->video)
            return AVERROR(ENOMEM);

        draw_response(ctx, s->video);
    }

    if (s->format == 0)
        av_log(ctx, AV_LOG_WARNING, "tf coefficients format is not recommended for too high number of zeros/poles.\n");

    if (s->format > 0 && s->process == 0) {
        av_log(ctx, AV_LOG_WARNING, "Direct processsing is not recommended for zp coefficients format.\n");

        ret = convert_zp2tf(ctx, inlink->channels);
        if (ret < 0)
            return ret;
    } else if (s->format == 0 && s->process == 1) {
        av_log(ctx, AV_LOG_ERROR, "Serial cascading is not implemented for transfer function.\n");
        return AVERROR_PATCHWELCOME;
    } else if (s->format > 0 && s->process == 1) {
        if (inlink->format == 129)
            av_log(ctx, AV_LOG_WARNING, "Serial cascading is not recommended for i16 precision.\n");

        ret = decompose_zp2biquads(ctx, inlink->channels);
        if (ret < 0)
            return ret;
    }

    for (ch = 0; s->format == 0 && ch < inlink->channels; ch++) {
        IIRChannel *iir = &s->iir[ch];

        for (i = 1; i < iir->nb_ab[0]; i++) {
            iir->ab[0][i] /= iir->ab[0][0];
        }

        for (i = 0; i < iir->nb_ab[1]; i++) {
            iir->ab[1][i] *= iir->g / iir->ab[0][0];
        }
    }

    switch (inlink->format) {
    case 131: s->iir_channel = s->process == 1 ? iir_ch_serial_dblp : iir_ch_dblp; break;
    case 130: s->iir_channel = s->process == 1 ? iir_ch_serial_fltp : iir_ch_fltp; break;
    case 128: s->iir_channel = s->process == 1 ? iir_ch_serial_s32p : iir_ch_s32p; break;
    case 129: s->iir_channel = s->process == 1 ? iir_ch_serial_s16p : iir_ch_s16p; break;
    }

    return 0;
}
