
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef enum AVMediaType { ____Placeholder_AVMediaType } AVMediaType ;
struct TYPE_7__ {int output_pads; } ;
struct TYPE_6__ {int sink; } ;
typedef TYPE_1__ Stream ;
typedef int AVFilterGraph ;
typedef TYPE_2__ AVFilterContext ;


 int AVERROR (int ) ;


 int AV_LOG_ERROR ;
 int EINVAL ;
 int av_log (int *,int ,char*) ;
 int avfilter_get_by_name (char const*) ;
 int avfilter_graph_create_filter (int *,int ,int *,int *,int *,int *) ;
 int avfilter_link (TYPE_2__*,int,int ,int ) ;
 int avfilter_pad_get_type (int ,int) ;

__attribute__((used)) static int create_sink(Stream *st, AVFilterGraph *graph,
                       AVFilterContext *f, int idx)
{
    enum AVMediaType type = avfilter_pad_get_type(f->output_pads, idx);
    const char *sink_name;
    int ret;

    switch (type) {
    case 128: sink_name = "buffersink"; break;
    case 129: sink_name = "abuffersink"; break;
    default:
        av_log(((void*)0), AV_LOG_ERROR, "Stream type not supported\n");
        return AVERROR(EINVAL);
    }
    ret = avfilter_graph_create_filter(&st->sink,
                                       avfilter_get_by_name(sink_name),
                                       ((void*)0), ((void*)0), ((void*)0), graph);
    if (ret < 0)
        return ret;
    ret = avfilter_link(f, idx, st->sink, 0);
    if (ret < 0)
        return ret;
    return 0;
}
