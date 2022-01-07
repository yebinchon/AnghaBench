
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sample_rate; int format; int channel_layout; } ;
typedef int SwrContext ;
typedef TYPE_1__ AVFrame ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int av_log (int *,int ,char*) ;
 scalar_t__ av_opt_set_int (int *,char*,int ,int ) ;
 int swr_close (int *) ;

int swr_config_frame(SwrContext *s, const AVFrame *out, const AVFrame *in)
{
    swr_close(s);

    if (in) {
        if (av_opt_set_int(s, "icl", in->channel_layout, 0) < 0)
            goto fail;
        if (av_opt_set_int(s, "isf", in->format, 0) < 0)
            goto fail;
        if (av_opt_set_int(s, "isr", in->sample_rate, 0) < 0)
            goto fail;
    }

    if (out) {
        if (av_opt_set_int(s, "ocl", out->channel_layout, 0) < 0)
            goto fail;
        if (av_opt_set_int(s, "osf", out->format, 0) < 0)
            goto fail;
        if (av_opt_set_int(s, "osr", out->sample_rate, 0) < 0)
            goto fail;
    }

    return 0;
fail:
    av_log(s, AV_LOG_ERROR, "Failed to set option\n");
    return AVERROR(EINVAL);
}
