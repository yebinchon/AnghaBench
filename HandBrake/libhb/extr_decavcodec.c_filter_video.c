
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * graph; } ;
struct TYPE_7__ {int nframes; int frame; int list; TYPE_1__ video_filters; } ;
typedef TYPE_2__ hb_work_private_t ;
typedef int hb_buffer_t ;


 int av_frame_unref (int ) ;
 int * copy_frame (TYPE_2__*) ;
 int hb_avfilter_add_frame (int *,int ) ;
 int hb_avfilter_get_frame (int *,int ) ;
 int hb_buffer_list_append (int *,int *) ;
 int reinit_video_filters (TYPE_2__*) ;

__attribute__((used)) static void filter_video(hb_work_private_t *pv)
{
    reinit_video_filters(pv);
    if (pv->video_filters.graph != ((void*)0))
    {
        int result;

        hb_avfilter_add_frame(pv->video_filters.graph, pv->frame);
        result = hb_avfilter_get_frame(pv->video_filters.graph, pv->frame);
        while (result >= 0)
        {
            hb_buffer_t * buf = copy_frame(pv);
            hb_buffer_list_append(&pv->list, buf);
            av_frame_unref(pv->frame);
            ++pv->nframes;
            result = hb_avfilter_get_frame(pv->video_filters.graph, pv->frame);
        }
    }
    else
    {
        hb_buffer_t * buf = copy_frame(pv);
        hb_buffer_list_append(&pv->list, buf);
        av_frame_unref(pv->frame);
        ++pv->nframes;
    }
}
