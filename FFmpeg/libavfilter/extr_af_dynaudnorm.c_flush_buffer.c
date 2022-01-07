
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int nb_samples; scalar_t__* extended_data; } ;
struct TYPE_6__ {int channels; double target_rms; double peak_value; int delay; scalar_t__* dc_correction_value; scalar_t__ dc_correction; scalar_t__ alt_boundary_mode; int frame_len; } ;
typedef TYPE_1__ DynamicAudioNormalizerContext ;
typedef TYPE_2__ AVFrame ;
typedef int AVFilterLink ;


 int AVERROR (int ) ;
 double DBL_EPSILON ;
 int ENOMEM ;
 double FFMIN (double,double) ;
 TYPE_2__* ff_get_audio_buffer (int *,int ) ;
 int filter_frame (int *,TYPE_2__*) ;

__attribute__((used)) static int flush_buffer(DynamicAudioNormalizerContext *s, AVFilterLink *inlink,
                        AVFilterLink *outlink)
{
    AVFrame *out = ff_get_audio_buffer(outlink, s->frame_len);
    int c, i;

    if (!out)
        return AVERROR(ENOMEM);

    for (c = 0; c < s->channels; c++) {
        double *dst_ptr = (double *)out->extended_data[c];

        for (i = 0; i < out->nb_samples; i++) {
            dst_ptr[i] = s->alt_boundary_mode ? DBL_EPSILON : ((s->target_rms > DBL_EPSILON) ? FFMIN(s->peak_value, s->target_rms) : s->peak_value);
            if (s->dc_correction) {
                dst_ptr[i] *= ((i % 2) == 1) ? -1 : 1;
                dst_ptr[i] += s->dc_correction_value[c];
            }
        }
    }

    s->delay--;
    return filter_frame(inlink, out);
}
