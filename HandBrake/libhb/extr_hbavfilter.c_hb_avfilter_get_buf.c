
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int hb_buffer_t ;
struct TYPE_3__ {int frame; int out_time_base; int output; } ;
typedef TYPE_1__ hb_avfilter_graph_t ;


 int av_buffersink_get_frame (int ,int ) ;
 int av_frame_unref (int ) ;
 int * hb_avframe_to_video_buffer (int ,int ) ;

hb_buffer_t * hb_avfilter_get_buf(hb_avfilter_graph_t * graph)
{
    int result;

    result = av_buffersink_get_frame(graph->output, graph->frame);
    if (result >= 0)
    {
        hb_buffer_t * buf;
        buf = hb_avframe_to_video_buffer(graph->frame, graph->out_time_base);
        av_frame_unref(graph->frame);
        return buf;
    }

    return ((void*)0);
}
