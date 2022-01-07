
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int pad_idx; TYPE_1__* filter_ctx; } ;
struct TYPE_11__ {int name; int ost; } ;
struct TYPE_10__ {int output_pads; } ;
typedef TYPE_2__ OutputFilter ;
typedef int FilterGraph ;
typedef TYPE_3__ AVFilterInOut ;




 int AV_LOG_FATAL ;
 int av_assert0 (int ) ;
 int av_log (int *,int ,char*,int ) ;
 int avfilter_pad_get_type (int ,int ) ;
 int configure_output_audio_filter (int *,TYPE_2__*,TYPE_3__*) ;
 int configure_output_video_filter (int *,TYPE_2__*,TYPE_3__*) ;
 int exit_program (int) ;

int configure_output_filter(FilterGraph *fg, OutputFilter *ofilter, AVFilterInOut *out)
{
    if (!ofilter->ost) {
        av_log(((void*)0), AV_LOG_FATAL, "Filter %s has an unconnected output\n", ofilter->name);
        exit_program(1);
    }

    switch (avfilter_pad_get_type(out->filter_ctx->output_pads, out->pad_idx)) {
    case 128: return configure_output_video_filter(fg, ofilter, out);
    case 129: return configure_output_audio_filter(fg, ofilter, out);
    default: av_assert0(0);
    }
}
