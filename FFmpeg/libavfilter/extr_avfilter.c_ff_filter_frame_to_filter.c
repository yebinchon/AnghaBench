
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int status_out; int frame_count_out; int max_samples; scalar_t__ min_samples; int fifo; int * dst; } ;
typedef int AVFrame ;
typedef TYPE_1__ AVFilterLink ;
typedef int AVFilterContext ;


 int AV_NOPTS_VALUE ;
 int av_assert1 (int) ;
 int ff_avfilter_link_set_out_status (TYPE_1__*,int,int ) ;
 int ff_filter_frame_framed (TYPE_1__*,int *) ;
 int ff_filter_set_ready (int *,int) ;
 int ff_framequeue_queued_frames (int *) ;
 int ff_inlink_consume_frame (TYPE_1__*,int **) ;
 int ff_inlink_consume_samples (TYPE_1__*,scalar_t__,int ,int **) ;
 int filter_unblock (int *) ;

__attribute__((used)) static int ff_filter_frame_to_filter(AVFilterLink *link)
{
    AVFrame *frame = ((void*)0);
    AVFilterContext *dst = link->dst;
    int ret;

    av_assert1(ff_framequeue_queued_frames(&link->fifo));
    ret = link->min_samples ?
          ff_inlink_consume_samples(link, link->min_samples, link->max_samples, &frame) :
          ff_inlink_consume_frame(link, &frame);
    av_assert1(ret);
    if (ret < 0) {
        av_assert1(!frame);
        return ret;
    }


    filter_unblock(dst);


    link->frame_count_out--;
    ret = ff_filter_frame_framed(link, frame);
    if (ret < 0 && ret != link->status_out) {
        ff_avfilter_link_set_out_status(link, ret, AV_NOPTS_VALUE);
    } else {


        ff_filter_set_ready(dst, 300);
    }
    return ret;
}
