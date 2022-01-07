
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int int8_t ;
typedef int int64_t ;
struct TYPE_14__ {int* linesize; int height; int width; int ** data; } ;
struct TYPE_13__ {long long start_display_time; long long end_display_time; int num_rects; int * rects; scalar_t__ pts; } ;
struct TYPE_11__ {int end_pts; TYPE_5__* frame; } ;
struct TYPE_12__ {TYPE_2__ sub2video; int dec_ctx; TYPE_1__* st; } ;
struct TYPE_10__ {int time_base; } ;
typedef TYPE_3__ InputStream ;
typedef TYPE_4__ AVSubtitle ;
typedef TYPE_5__ AVFrame ;


 int AV_LOG_ERROR ;
 int AV_TIME_BASE_Q ;
 int INT64_MAX ;
 int av_log (int ,int ,char*) ;
 int av_rescale_q (scalar_t__,int ,int ) ;
 int sub2video_copy_rect (int *,int,int ,int ,int ) ;
 scalar_t__ sub2video_get_blank_frame (TYPE_3__*) ;
 int sub2video_push_ref (TYPE_3__*,int ) ;

void sub2video_update(InputStream *ist, AVSubtitle *sub)
{
    AVFrame *frame = ist->sub2video.frame;
    int8_t *dst;
    int dst_linesize;
    int num_rects, i;
    int64_t pts, end_pts;

    if (!frame)
        return;
    if (sub) {
        pts = av_rescale_q(sub->pts + sub->start_display_time * 1000LL,
                                 AV_TIME_BASE_Q, ist->st->time_base);
        end_pts = av_rescale_q(sub->pts + sub->end_display_time * 1000LL,
                                 AV_TIME_BASE_Q, ist->st->time_base);
        num_rects = sub->num_rects;
    } else {
        pts = ist->sub2video.end_pts;
        end_pts = INT64_MAX;
        num_rects = 0;
    }
    if (sub2video_get_blank_frame(ist) < 0) {
        av_log(ist->dec_ctx, AV_LOG_ERROR,
               "Impossible to get a blank canvas.\n");
        return;
    }
    dst = frame->data [0];
    dst_linesize = frame->linesize[0];
    for (i = 0; i < num_rects; i++)
        sub2video_copy_rect(dst, dst_linesize, frame->width, frame->height, sub->rects[i]);
    sub2video_push_ref(ist, pts);
    ist->sub2video.end_pts = end_pts;
}
