
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ max_frame_duration; int vidclk; } ;
typedef TYPE_1__ VideoState ;


 int AV_LOG_TRACE ;
 double AV_SYNC_FRAMEDUP_THRESHOLD ;
 int AV_SYNC_THRESHOLD_MAX ;
 int AV_SYNC_THRESHOLD_MIN ;
 scalar_t__ AV_SYNC_VIDEO_MASTER ;
 double FFMAX (int ,double) ;
 double FFMIN (int ,double) ;
 int av_log (int *,int ,char*,double,double) ;
 scalar_t__ fabs (double) ;
 double get_clock (int *) ;
 double get_master_clock (TYPE_1__*) ;
 scalar_t__ get_master_sync_type (TYPE_1__*) ;
 int isnan (double) ;

__attribute__((used)) static double compute_target_delay(double delay, VideoState *is)
{
    double sync_threshold, diff = 0;


    if (get_master_sync_type(is) != AV_SYNC_VIDEO_MASTER) {


        diff = get_clock(&is->vidclk) - get_master_clock(is);




        sync_threshold = FFMAX(AV_SYNC_THRESHOLD_MIN, FFMIN(AV_SYNC_THRESHOLD_MAX, delay));
        if (!isnan(diff) && fabs(diff) < is->max_frame_duration) {
            if (diff <= -sync_threshold)
                delay = FFMAX(0, delay + diff);
            else if (diff >= sync_threshold && delay > AV_SYNC_FRAMEDUP_THRESHOLD)
                delay = delay + diff;
            else if (diff >= sync_threshold)
                delay = 2 * delay;
        }
    }

    av_log(((void*)0), AV_LOG_TRACE, "video: delay=%0.3f A-V=%f\n",
            delay, -diff);

    return delay;
}
