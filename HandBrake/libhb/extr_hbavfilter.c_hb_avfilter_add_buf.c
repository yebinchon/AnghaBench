
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int hb_buffer_t ;
struct TYPE_3__ {int input; int * frame; } ;
typedef TYPE_1__ hb_avfilter_graph_t ;


 int av_buffersrc_add_frame (int ,int *) ;
 int hb_video_buffer_to_avframe (int *,int *) ;

int hb_avfilter_add_buf(hb_avfilter_graph_t * graph, hb_buffer_t * in)
{
    if (in != ((void*)0))
    {
        hb_video_buffer_to_avframe(graph->frame, in);
        return av_buffersrc_add_frame(graph->input, graph->frame);
    }
    else
    {
        return av_buffersrc_add_frame(graph->input, ((void*)0));
    }
}
