
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int output; } ;
typedef TYPE_1__ hb_avfilter_graph_t ;
typedef int AVFrame ;


 int av_buffersink_get_frame (int ,int *) ;

int hb_avfilter_get_frame(hb_avfilter_graph_t * graph, AVFrame * frame)
{
    return av_buffersink_get_frame(graph->output, frame);
}
