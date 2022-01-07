
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVFilterGraph ;


 int graph_check_links (int *,void*) ;
 int graph_check_validity (int *,void*) ;
 int graph_config_formats (int *,void*) ;
 int graph_config_links (int *,void*) ;
 int graph_config_pointers (int *,void*) ;
 int graph_insert_fifos (int *,void*) ;

int avfilter_graph_config(AVFilterGraph *graphctx, void *log_ctx)
{
    int ret;

    if ((ret = graph_check_validity(graphctx, log_ctx)))
        return ret;
    if ((ret = graph_insert_fifos(graphctx, log_ctx)) < 0)
        return ret;
    if ((ret = graph_config_formats(graphctx, log_ctx)))
        return ret;
    if ((ret = graph_config_links(graphctx, log_ctx)))
        return ret;
    if ((ret = graph_check_links(graphctx, log_ctx)))
        return ret;
    if ((ret = graph_config_pointers(graphctx, log_ctx)))
        return ret;

    return 0;
}
