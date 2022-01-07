
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ HLSContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int HLS_SECOND_LEVEL_SEGMENT_DURATION ;
 int HLS_SECOND_LEVEL_SEGMENT_INDEX ;
 int HLS_SECOND_LEVEL_SEGMENT_SIZE ;
 int av_log (TYPE_1__*,int ,char*) ;

__attribute__((used)) static int sls_flag_check_duration_size_index(HLSContext *hls)
{
    int ret = 0;

    if (hls->flags & HLS_SECOND_LEVEL_SEGMENT_DURATION) {
        av_log(hls, AV_LOG_ERROR,
               "second_level_segment_duration hls_flag requires strftime to be true\n");
        ret = AVERROR(EINVAL);
    }
    if (hls->flags & HLS_SECOND_LEVEL_SEGMENT_SIZE) {
        av_log(hls, AV_LOG_ERROR,
               "second_level_segment_size hls_flag requires strfime to be true\n");
        ret = AVERROR(EINVAL);
    }
    if (hls->flags & HLS_SECOND_LEVEL_SEGMENT_INDEX) {
        av_log(hls, AV_LOG_ERROR,
               "second_level_segment_index hls_flag requires strftime to be true\n");
        ret = AVERROR(EINVAL);
    }

    return ret;
}
