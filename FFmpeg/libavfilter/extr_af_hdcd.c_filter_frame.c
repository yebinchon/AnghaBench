
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int int32_t ;
typedef int int16_t ;
struct TYPE_19__ {TYPE_3__** outputs; TYPE_1__* priv; } ;
struct TYPE_18__ {int format; TYPE_4__* dst; } ;
struct TYPE_17__ {int nb_samples; int format; int channels; scalar_t__* data; scalar_t__* extended_data; } ;
struct TYPE_16__ {int bits_per_sample; int sample_count; int detect; int * state; scalar_t__ process_stereo; } ;
typedef TYPE_1__ HDCDContext ;
typedef TYPE_2__ AVFrame ;
typedef TYPE_3__ AVFilterLink ;
typedef TYPE_4__ AVFilterContext ;


 int AVERROR (int ) ;




 int ENOMEM ;
 int av_frame_copy_props (TYPE_2__*,TYPE_2__*) ;
 int av_frame_free (TYPE_2__**) ;
 int ff_filter_frame (TYPE_3__*,TYPE_2__*) ;
 TYPE_2__* ff_get_audio_buffer (TYPE_3__*,int) ;
 int hdcd_detect_end (int *,int) ;
 int hdcd_detect_onech (int *,int *) ;
 int hdcd_detect_start (int *) ;
 int hdcd_process (TYPE_1__*,int *,int*,int,int) ;
 int hdcd_process_stereo (TYPE_1__*,int*,int) ;

__attribute__((used)) static int filter_frame(AVFilterLink *inlink, AVFrame *in)
{
    AVFilterContext *ctx = inlink->dst;
    HDCDContext *s = ctx->priv;
    AVFilterLink *outlink = ctx->outputs[0];
    AVFrame *out;
    const int16_t *in_data;
    const int32_t *in_data32;
    int32_t *out_data;
    int n, c, result;
    int a = 32 - s->bits_per_sample;

    out = ff_get_audio_buffer(outlink, in->nb_samples);
    if (!out) {
        av_frame_free(&in);
        return AVERROR(ENOMEM);
    }
    result = av_frame_copy_props(out, in);
    if (result) {
        av_frame_free(&out);
        av_frame_free(&in);
        return result;
    }
    out->format = outlink->format;

    out_data = (int32_t*)out->data[0];
    switch (inlink->format) {
        case 130:
            for (n = 0; n < in->nb_samples; n++)
                for (c = 0; c < in->channels; c++) {
                    in_data = (int16_t*)in->extended_data[c];
                    out_data[(n * in->channels) + c] = in_data[n];
                }
            break;
        case 131:
            in_data = (int16_t*)in->data[0];
            for (n = 0; n < in->nb_samples * in->channels; n++)
                out_data[n] = in_data[n];
            break;

        case 128:
            for (n = 0; n < in->nb_samples; n++)
                for (c = 0; c < in->channels; c++) {
                    in_data32 = (int32_t*)in->extended_data[c];
                    out_data[(n * in->channels) + c] = in_data32[n] >> a;
                }
            break;
        case 129:
            in_data32 = (int32_t*)in->data[0];
            for (n = 0; n < in->nb_samples * in->channels; n++)
                out_data[n] = in_data32[n] >> a;
            break;
    }

    if (s->process_stereo) {
        hdcd_detect_start(&s->detect);
        hdcd_process_stereo(s, out_data, in->nb_samples);
        hdcd_detect_onech(&s->state[0], &s->detect);
        hdcd_detect_onech(&s->state[1], &s->detect);
        hdcd_detect_end(&s->detect, 2);
    } else {
        hdcd_detect_start(&s->detect);
        for (c = 0; c < in->channels; c++) {
            hdcd_process(s, &s->state[c], out_data + c, in->nb_samples, in->channels);
            hdcd_detect_onech(&s->state[c], &s->detect);
        }
        hdcd_detect_end(&s->detect, in->channels);
    }

    s->sample_count += in->nb_samples * in->channels;

    av_frame_free(&in);
    return ff_filter_frame(outlink, out);
}
