
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_10__ {int pts; int * data; } ;
struct TYPE_8__ {int last_pts; TYPE_4__* frame; } ;
struct TYPE_9__ {int nb_filters; TYPE_1__** filters; TYPE_2__ sub2video; } ;
struct TYPE_7__ {int filter; } ;
typedef TYPE_3__ InputStream ;
typedef TYPE_4__ AVFrame ;


 int AVERROR_EOF ;
 int AV_BUFFERSRC_FLAG_KEEP_REF ;
 int AV_BUFFERSRC_FLAG_PUSH ;
 int AV_LOG_WARNING ;
 int av_assert1 (int ) ;
 int av_buffersrc_add_frame_flags (int ,TYPE_4__*,int) ;
 int av_err2str (int) ;
 int av_log (int *,int ,char*,int ) ;

__attribute__((used)) static void sub2video_push_ref(InputStream *ist, int64_t pts)
{
    AVFrame *frame = ist->sub2video.frame;
    int i;
    int ret;

    av_assert1(frame->data[0]);
    ist->sub2video.last_pts = frame->pts = pts;
    for (i = 0; i < ist->nb_filters; i++) {
        ret = av_buffersrc_add_frame_flags(ist->filters[i]->filter, frame,
                                           AV_BUFFERSRC_FLAG_KEEP_REF |
                                           AV_BUFFERSRC_FLAG_PUSH);
        if (ret != AVERROR_EOF && ret < 0)
            av_log(((void*)0), AV_LOG_WARNING, "Error while add the frame to buffer source(%s).\n",
                   av_err2str(ret));
    }
}
