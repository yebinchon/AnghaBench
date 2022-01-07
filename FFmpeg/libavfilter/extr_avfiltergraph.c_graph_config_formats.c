
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVFilterGraph ;
typedef int AVClass ;


 int AVERROR (int ) ;
 int AV_LOG_DEBUG ;
 int EAGAIN ;
 int av_log (int *,int ,char*) ;
 int pick_formats (int *) ;
 int query_formats (int *,int *) ;
 int reduce_formats (int *) ;
 int swap_channel_layouts (int *) ;
 int swap_sample_fmts (int *) ;
 int swap_samplerates (int *) ;

__attribute__((used)) static int graph_config_formats(AVFilterGraph *graph, AVClass *log_ctx)
{
    int ret;


    while ((ret = query_formats(graph, log_ctx)) == AVERROR(EAGAIN))
        av_log(graph, AV_LOG_DEBUG, "query_formats not finished\n");
    if (ret < 0)
        return ret;




    if ((ret = reduce_formats(graph)) < 0)
        return ret;



    swap_sample_fmts(graph);
    swap_samplerates(graph);
    swap_channel_layouts(graph);

    if ((ret = pick_formats(graph)) < 0)
        return ret;

    return 0;
}
