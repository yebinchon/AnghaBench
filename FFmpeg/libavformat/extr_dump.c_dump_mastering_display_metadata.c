
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int max_luminance; int min_luminance; int * white_point; int ** display_primaries; int has_luminance; int has_primaries; } ;
struct TYPE_4__ {scalar_t__ data; } ;
typedef TYPE_1__ AVPacketSideData ;
typedef TYPE_2__ AVMasteringDisplayMetadata ;


 int AV_LOG_INFO ;
 int av_log (void*,int ,char*,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int av_q2d (int ) ;

__attribute__((used)) static void dump_mastering_display_metadata(void *ctx, AVPacketSideData* sd) {
    AVMasteringDisplayMetadata* metadata = (AVMasteringDisplayMetadata*)sd->data;
    av_log(ctx, AV_LOG_INFO, "Mastering Display Metadata, "
           "has_primaries:%d has_luminance:%d "
           "r(%5.4f,%5.4f) g(%5.4f,%5.4f) b(%5.4f %5.4f) wp(%5.4f, %5.4f) "
           "min_luminance=%f, max_luminance=%f",
           metadata->has_primaries, metadata->has_luminance,
           av_q2d(metadata->display_primaries[0][0]),
           av_q2d(metadata->display_primaries[0][1]),
           av_q2d(metadata->display_primaries[1][0]),
           av_q2d(metadata->display_primaries[1][1]),
           av_q2d(metadata->display_primaries[2][0]),
           av_q2d(metadata->display_primaries[2][1]),
           av_q2d(metadata->white_point[0]), av_q2d(metadata->white_point[1]),
           av_q2d(metadata->min_luminance), av_q2d(metadata->max_luminance));
}
