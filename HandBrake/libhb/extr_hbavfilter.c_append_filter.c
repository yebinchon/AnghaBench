
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * last; int avgraph; } ;
typedef TYPE_1__ hb_avfilter_graph_t ;
typedef int AVFilterContext ;


 int avfilter_free (int *) ;
 int avfilter_get_by_name (char const*) ;
 int avfilter_graph_create_filter (int **,int ,char const*,char const*,int *,int ) ;
 int avfilter_link (int *,int ,int *,int ) ;

__attribute__((used)) static AVFilterContext * append_filter( hb_avfilter_graph_t * graph,
                                        const char * name, const char * args)
{
    AVFilterContext * filter;
    int result;

    result = avfilter_graph_create_filter(&filter, avfilter_get_by_name(name),
                                          name, args, ((void*)0), graph->avgraph);
    if (result < 0)
    {
        return ((void*)0);
    }
    if (graph->last != ((void*)0))
    {
        result = avfilter_link(graph->last, 0, filter, 0);
        if (result < 0)
        {
            avfilter_free(filter);
            return ((void*)0);
        }
    }
    graph->last = filter;

    return filter;
}
