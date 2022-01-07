
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_12__ {int sustain_reset; } ;
struct TYPE_11__ {TYPE_1__* graph; TYPE_2__* priv; } ;
struct TYPE_10__ {scalar_t__ format; int sample_rate; int channels; TYPE_4__* dst; } ;
struct TYPE_9__ {int bits_per_sample; size_t cdt_ms; size_t analyze_mode; scalar_t__ force_pe; scalar_t__ process_stereo; TYPE_5__* state; int detect; } ;
struct TYPE_8__ {scalar_t__ disable_auto_convert; } ;
typedef TYPE_2__ HDCDContext ;
typedef TYPE_3__ AVFilterLink ;
typedef TYPE_4__ AVFilterContext ;


 int AV_LOG_VERBOSE ;
 int AV_LOG_WARNING ;
 scalar_t__ AV_SAMPLE_FMT_S16 ;
 scalar_t__ AV_SAMPLE_FMT_S16P ;
 int HDCD_MAX_CHANNELS ;
 int * ana_mode_str ;
 int av_get_sample_fmt_name (scalar_t__) ;
 int av_log (TYPE_4__*,int ,char*,...) ;
 int hdcd_detect_reset (int *) ;
 int hdcd_reset (TYPE_5__*,int,size_t) ;

__attribute__((used)) static int config_input(AVFilterLink *inlink) {
    AVFilterContext *ctx = inlink->dst;
    HDCDContext *s = ctx->priv;
    int c;

    av_log(ctx, AV_LOG_VERBOSE, "Auto-convert: %s\n",
        (ctx->graph->disable_auto_convert) ? "disabled" : "enabled");

    if ((inlink->format == AV_SAMPLE_FMT_S16 ||
         inlink->format == AV_SAMPLE_FMT_S16P) &&
         s->bits_per_sample != 16) {
            av_log(ctx, AV_LOG_WARNING, "bits_per_sample %d does not fit into sample format %s, falling back to 16\n",
                s->bits_per_sample, av_get_sample_fmt_name(inlink->format) );
        s->bits_per_sample = 16;
    } else {
        av_log(ctx, AV_LOG_VERBOSE, "Looking for %d-bit HDCD in sample format %s\n",
            s->bits_per_sample, av_get_sample_fmt_name(inlink->format) );
    }

    if (s->bits_per_sample != 16)
        av_log(ctx, AV_LOG_WARNING, "20 and 24-bit HDCD decoding is experimental\n");
    if (inlink->sample_rate != 44100)
        av_log(ctx, AV_LOG_WARNING, "HDCD decoding for sample rates other than 44100 is experimental\n");

    hdcd_detect_reset(&s->detect);
    for (c = 0; c < HDCD_MAX_CHANNELS; c++) {
        hdcd_reset(&s->state[c], inlink->sample_rate, s->cdt_ms);
    }
    av_log(ctx, AV_LOG_VERBOSE, "CDT period: %dms (%u samples @44100Hz)\n",
        s->cdt_ms, s->state[0].sustain_reset );

    if (inlink->channels != 2 && s->process_stereo) {
        av_log(ctx, AV_LOG_WARNING, "process_stereo disabled (channels = %d)\n", inlink->channels);
        s->process_stereo = 0;
    }
    av_log(ctx, AV_LOG_VERBOSE, "Process mode: %s\n",
        (s->process_stereo) ? "process stereo channels together" : "process each channel separately");

    av_log(ctx, AV_LOG_VERBOSE, "Force PE: %s\n",
        (s->force_pe) ? "on" : "off");
    av_log(ctx, AV_LOG_VERBOSE, "Analyze mode: [%d] %s\n",
        s->analyze_mode, ana_mode_str[s->analyze_mode] );

    return 0;
}
