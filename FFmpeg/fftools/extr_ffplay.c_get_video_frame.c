
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_11__ ;


struct TYPE_16__ {scalar_t__ nb_packets; } ;
struct TYPE_15__ {scalar_t__ serial; } ;
struct TYPE_19__ {scalar_t__ pkt_serial; } ;
struct TYPE_17__ {double frame_last_filter_delay; int frame_drops_early; TYPE_2__ videoq; TYPE_1__ vidclk; TYPE_9__ viddec; TYPE_11__* video_st; int ic; } ;
typedef TYPE_3__ VideoState ;
struct TYPE_18__ {double pts; int sample_aspect_ratio; } ;
struct TYPE_14__ {int time_base; } ;
typedef TYPE_4__ AVFrame ;


 double AV_NOPTS_VALUE ;
 scalar_t__ AV_NOSYNC_THRESHOLD ;
 scalar_t__ AV_SYNC_VIDEO_MASTER ;
 double NAN ;
 int av_frame_unref (TYPE_4__*) ;
 int av_guess_sample_aspect_ratio (int ,TYPE_11__*,TYPE_4__*) ;
 double av_q2d (int ) ;
 int decoder_decode_frame (TYPE_9__*,TYPE_4__*,int *) ;
 scalar_t__ fabs (double) ;
 scalar_t__ framedrop ;
 double get_master_clock (TYPE_3__*) ;
 scalar_t__ get_master_sync_type (TYPE_3__*) ;
 int isnan (double) ;

__attribute__((used)) static int get_video_frame(VideoState *is, AVFrame *frame)
{
    int got_picture;

    if ((got_picture = decoder_decode_frame(&is->viddec, frame, ((void*)0))) < 0)
        return -1;

    if (got_picture) {
        double dpts = NAN;

        if (frame->pts != AV_NOPTS_VALUE)
            dpts = av_q2d(is->video_st->time_base) * frame->pts;

        frame->sample_aspect_ratio = av_guess_sample_aspect_ratio(is->ic, is->video_st, frame);

        if (framedrop>0 || (framedrop && get_master_sync_type(is) != AV_SYNC_VIDEO_MASTER)) {
            if (frame->pts != AV_NOPTS_VALUE) {
                double diff = dpts - get_master_clock(is);
                if (!isnan(diff) && fabs(diff) < AV_NOSYNC_THRESHOLD &&
                    diff - is->frame_last_filter_delay < 0 &&
                    is->viddec.pkt_serial == is->vidclk.serial &&
                    is->videoq.nb_packets) {
                    is->frame_drops_early++;
                    av_frame_unref(frame);
                    got_picture = 0;
                }
            }
        }
    }

    return got_picture;
}
