
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_18__ {TYPE_3__** outputs; TYPE_1__* priv; } ;
struct TYPE_17__ {int format; int sample_rate; int time_base; TYPE_4__* dst; } ;
struct TYPE_16__ {int nb_samples; scalar_t__ pts; int format; int sample_rate; int * linesize; int extended_data; } ;
struct TYPE_15__ {scalar_t__ next_pts; scalar_t__ next_in_pts; int got_output; scalar_t__ resampling; scalar_t__ avr; } ;
typedef TYPE_1__ ResampleContext ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVFilterLink ;
typedef TYPE_4__ AVFilterContext ;


 int AVERROR (int ) ;
 int AV_LOG_WARNING ;
 scalar_t__ AV_NOPTS_VALUE ;
 int ENOMEM ;
 int av_assert0 (int) ;
 int av_frame_copy_props (TYPE_2__*,TYPE_2__*) ;
 int av_frame_free (TYPE_2__**) ;
 int av_log (TYPE_4__*,int ,char*) ;
 void* av_rescale (int,int ,int ) ;
 void* av_rescale_q (scalar_t__,int ,int ) ;
 int avresample_available (scalar_t__) ;
 int avresample_convert (scalar_t__,int ,int ,int,int ,int ,int) ;
 int avresample_get_delay (scalar_t__) ;
 int avresample_get_out_samples (scalar_t__,int) ;
 int ff_filter_frame (TYPE_3__*,TYPE_2__*) ;
 TYPE_2__* ff_get_audio_buffer (TYPE_3__*,int) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    ResampleContext *s = ctx->priv;
    AVFilterLink *outlink = ctx->outputs[0];
    int ret;

    if (s->avr) {
        AVFrame *out;
        int delay, nb_samples;


        delay = avresample_get_delay(s->avr);
        nb_samples = avresample_get_out_samples(s->avr, in->nb_samples);

        out = ff_get_audio_buffer(outlink, nb_samples);
        if (!out) {
            ret = AVERROR(ENOMEM);
            goto fail;
        }

        ret = avresample_convert(s->avr, out->extended_data, out->linesize[0],
                                 nb_samples, in->extended_data, in->linesize[0],
                                 in->nb_samples);
        if (ret <= 0) {
            av_frame_free(&out);
            if (ret < 0)
                goto fail;
        }

        av_assert0(!avresample_available(s->avr));

        if (s->resampling && s->next_pts == AV_NOPTS_VALUE) {
            if (in->pts == AV_NOPTS_VALUE) {
                av_log(ctx, AV_LOG_WARNING, "First timestamp is missing, "
                       "assuming 0.\n");
                s->next_pts = 0;
            } else
                s->next_pts = av_rescale_q(in->pts, inlink->time_base,
                                           outlink->time_base);
        }

        if (ret > 0) {
            out->nb_samples = ret;

            ret = av_frame_copy_props(out, in);
            if (ret < 0) {
                av_frame_free(&out);
                goto fail;
            }

            if (s->resampling) {
                out->sample_rate = outlink->sample_rate;





                if (in->pts != AV_NOPTS_VALUE && in->pts != s->next_in_pts) {
                    out->pts = av_rescale_q(in->pts, inlink->time_base,
                                                outlink->time_base) -
                                   av_rescale(delay, outlink->sample_rate,
                                              inlink->sample_rate);
                } else
                    out->pts = s->next_pts;

                s->next_pts = out->pts + out->nb_samples;
                s->next_in_pts = in->pts + in->nb_samples;
            } else
                out->pts = in->pts;

            ret = ff_filter_frame(outlink, out);
            s->got_output = 1;
        }

fail:
        av_frame_free(&in);
    } else {
        in->format = outlink->format;
        ret = ff_filter_frame(outlink, in);
        s->got_output = 1;
    }

    return ret;
}
