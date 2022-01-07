
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_8__ {int pictq; } ;
typedef TYPE_1__ VideoState ;
struct TYPE_10__ {int format; int height; int width; int sample_aspect_ratio; int pict_type; } ;
struct TYPE_9__ {double pts; double duration; int serial; int frame; int sar; int height; int width; int pos; int format; scalar_t__ uploaded; } ;
typedef TYPE_2__ Frame ;
typedef TYPE_3__ AVFrame ;


 int av_frame_move_ref (int ,TYPE_3__*) ;
 int av_get_picture_type_char (int ) ;
 TYPE_2__* frame_queue_peek_writable (int *) ;
 int frame_queue_push (int *) ;
 int printf (char*,int,double) ;
 int set_default_window_size (int ,int ,int ) ;

__attribute__((used)) static int queue_picture(VideoState *is, AVFrame *src_frame, double pts, double duration, int64_t pos, int serial)
{
    Frame *vp;






    if (!(vp = frame_queue_peek_writable(&is->pictq)))
        return -1;

    vp->sar = src_frame->sample_aspect_ratio;
    vp->uploaded = 0;

    vp->width = src_frame->width;
    vp->height = src_frame->height;
    vp->format = src_frame->format;

    vp->pts = pts;
    vp->duration = duration;
    vp->pos = pos;
    vp->serial = serial;

    set_default_window_size(vp->width, vp->height, vp->sar);

    av_frame_move_ref(vp->frame, src_frame);
    frame_queue_push(&is->pictq);
    return 0;
}
