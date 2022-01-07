
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int basename; } ;
typedef TYPE_1__ VariantStream ;
struct TYPE_7__ {int flags; } ;
typedef TYPE_2__ HLSContext ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int HLS_SECOND_LEVEL_SEGMENT_DURATION ;
 int HLS_SECOND_LEVEL_SEGMENT_SIZE ;
 int av_log (TYPE_2__*,int ,char*) ;
 char* avio_find_protocol_name (int ) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int sls_flag_check_duration_size(HLSContext *hls, VariantStream *vs)
{
    const char *proto = avio_find_protocol_name(vs->basename);
    int segment_renaming_ok = proto && !strcmp(proto, "file");
    int ret = 0;

    if ((hls->flags & HLS_SECOND_LEVEL_SEGMENT_DURATION) && !segment_renaming_ok) {
        av_log(hls, AV_LOG_ERROR,
               "second_level_segment_duration hls_flag works only with file protocol segment names\n");
        ret = AVERROR(EINVAL);
    }
    if ((hls->flags & HLS_SECOND_LEVEL_SEGMENT_SIZE) && !segment_renaming_ok) {
        av_log(hls, AV_LOG_ERROR,
               "second_level_segment_size hls_flag works only with file protocol segment names\n");
        ret = AVERROR(EINVAL);
    }

    return ret;
}
