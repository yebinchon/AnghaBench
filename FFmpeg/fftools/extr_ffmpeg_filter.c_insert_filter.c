
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * graph; } ;
typedef int AVFilterGraph ;
typedef TYPE_1__ AVFilterContext ;


 int avfilter_get_by_name (char const*) ;
 int avfilter_graph_create_filter (TYPE_1__**,int ,char const*,char const*,int *,int *) ;
 int avfilter_link (TYPE_1__*,int,TYPE_1__*,int ) ;

__attribute__((used)) static int insert_filter(AVFilterContext **last_filter, int *pad_idx,
                         const char *filter_name, const char *args)
{
    AVFilterGraph *graph = (*last_filter)->graph;
    AVFilterContext *ctx;
    int ret;

    ret = avfilter_graph_create_filter(&ctx,
                                       avfilter_get_by_name(filter_name),
                                       filter_name, args, ((void*)0), graph);
    if (ret < 0)
        return ret;

    ret = avfilter_link(*last_filter, *pad_idx, ctx, 0);
    if (ret < 0)
        return ret;

    *last_filter = ctx;
    *pad_idx = 0;
    return 0;
}
