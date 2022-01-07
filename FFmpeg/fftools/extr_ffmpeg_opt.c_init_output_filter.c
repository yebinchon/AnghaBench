
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int type; int format; int out_tmp; TYPE_1__* ost; } ;
struct TYPE_6__ {int source_index; int index; int file_index; scalar_t__ filters_script; scalar_t__ filters; scalar_t__ avfilter; scalar_t__ stream_copy; TYPE_2__* filter; } ;
typedef TYPE_1__ OutputStream ;
typedef TYPE_2__ OutputFilter ;
typedef int OptionsContext ;
typedef int AVFormatContext ;




 int AV_LOG_ERROR ;
 int AV_LOG_FATAL ;
 int av_log (int *,int ,char*,...) ;
 int avfilter_inout_free (int *) ;
 int exit_program (int) ;
 TYPE_1__* new_audio_stream (int *,int *,int) ;
 TYPE_1__* new_video_stream (int *,int *,int) ;

__attribute__((used)) static void init_output_filter(OutputFilter *ofilter, OptionsContext *o,
                               AVFormatContext *oc)
{
    OutputStream *ost;

    switch (ofilter->type) {
    case 128: ost = new_video_stream(o, oc, -1); break;
    case 129: ost = new_audio_stream(o, oc, -1); break;
    default:
        av_log(((void*)0), AV_LOG_FATAL, "Only video and audio filters are supported "
               "currently.\n");
        exit_program(1);
    }

    ost->source_index = -1;
    ost->filter = ofilter;

    ofilter->ost = ost;
    ofilter->format = -1;

    if (ost->stream_copy) {
        av_log(((void*)0), AV_LOG_ERROR, "Streamcopy requested for output stream %d:%d, "
               "which is fed from a complex filtergraph. Filtering and streamcopy "
               "cannot be used together.\n", ost->file_index, ost->index);
        exit_program(1);
    }

    if (ost->avfilter && (ost->filters || ost->filters_script)) {
        const char *opt = ost->filters ? "-vf/-af/-filter" : "-filter_script";
        av_log(((void*)0), AV_LOG_ERROR,
               "%s '%s' was specified through the %s option "
               "for output stream %d:%d, which is fed from a complex filtergraph.\n"
               "%s and -filter_complex cannot be used together for the same stream.\n",
               ost->filters ? "Filtergraph" : "Filtergraph script",
               ost->filters ? ost->filters : ost->filters_script,
               opt, ost->file_index, ost->index, opt);
        exit_program(1);
    }

    avfilter_inout_free(&ofilter->out_tmp);
}
