
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ channel_layout; scalar_t__ sample_rate; scalar_t__ format; } ;
struct TYPE_6__ {scalar_t__ in_ch_layout; scalar_t__ in_sample_rate; scalar_t__ in_sample_fmt; scalar_t__ out_ch_layout; scalar_t__ out_sample_rate; scalar_t__ out_sample_fmt; } ;
typedef TYPE_1__ SwrContext ;
typedef TYPE_2__ AVFrame ;


 int AVERROR_INPUT_CHANGED ;
 int AVERROR_OUTPUT_CHANGED ;

__attribute__((used)) static int config_changed(SwrContext *s,
                          const AVFrame *out, const AVFrame *in)
{
    int ret = 0;

    if (in) {
        if (s->in_ch_layout != in->channel_layout ||
            s->in_sample_rate != in->sample_rate ||
            s->in_sample_fmt != in->format) {
            ret |= AVERROR_INPUT_CHANGED;
        }
    }

    if (out) {
        if (s->out_ch_layout != out->channel_layout ||
            s->out_sample_rate != out->sample_rate ||
            s->out_sample_fmt != out->format) {
            ret |= AVERROR_OUTPUT_CHANGED;
        }
    }

    return ret;
}
