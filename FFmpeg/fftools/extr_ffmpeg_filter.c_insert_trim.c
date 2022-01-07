
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int int64_t ;
typedef enum AVMediaType { ____Placeholder_AVMediaType } AVMediaType ;
struct TYPE_9__ {int output_pads; int * graph; } ;
typedef int AVFilterGraph ;
typedef TYPE_1__ AVFilterContext ;
typedef int AVFilter ;


 int AVERROR (int ) ;
 int AVERROR_FILTER_NOT_FOUND ;
 int AVMEDIA_TYPE_VIDEO ;
 int AV_LOG_ERROR ;
 int AV_NOPTS_VALUE ;
 int AV_OPT_SEARCH_CHILDREN ;
 int ENOMEM ;
 int INT64_MAX ;
 int av_log (TYPE_1__*,int ,char*,char const*) ;
 int av_opt_set_int (TYPE_1__*,char*,int ,int ) ;
 int * avfilter_get_by_name (char const*) ;
 TYPE_1__* avfilter_graph_alloc_filter (int *,int const*,char const*) ;
 int avfilter_init_str (TYPE_1__*,int *) ;
 int avfilter_link (TYPE_1__*,int,TYPE_1__*,int ) ;
 int avfilter_pad_get_type (int ,int) ;

__attribute__((used)) static int insert_trim(int64_t start_time, int64_t duration,
                       AVFilterContext **last_filter, int *pad_idx,
                       const char *filter_name)
{
    AVFilterGraph *graph = (*last_filter)->graph;
    AVFilterContext *ctx;
    const AVFilter *trim;
    enum AVMediaType type = avfilter_pad_get_type((*last_filter)->output_pads, *pad_idx);
    const char *name = (type == AVMEDIA_TYPE_VIDEO) ? "trim" : "atrim";
    int ret = 0;

    if (duration == INT64_MAX && start_time == AV_NOPTS_VALUE)
        return 0;

    trim = avfilter_get_by_name(name);
    if (!trim) {
        av_log(((void*)0), AV_LOG_ERROR, "%s filter not present, cannot limit "
               "recording time.\n", name);
        return AVERROR_FILTER_NOT_FOUND;
    }

    ctx = avfilter_graph_alloc_filter(graph, trim, filter_name);
    if (!ctx)
        return AVERROR(ENOMEM);

    if (duration != INT64_MAX) {
        ret = av_opt_set_int(ctx, "durationi", duration,
                                AV_OPT_SEARCH_CHILDREN);
    }
    if (ret >= 0 && start_time != AV_NOPTS_VALUE) {
        ret = av_opt_set_int(ctx, "starti", start_time,
                                AV_OPT_SEARCH_CHILDREN);
    }
    if (ret < 0) {
        av_log(ctx, AV_LOG_ERROR, "Error configuring the %s filter", name);
        return ret;
    }

    ret = avfilter_init_str(ctx, ((void*)0));
    if (ret < 0)
        return ret;

    ret = avfilter_link(*last_filter, *pad_idx, ctx, 0);
    if (ret < 0)
        return ret;

    *last_filter = ctx;
    *pad_idx = 0;
    return 0;
}
