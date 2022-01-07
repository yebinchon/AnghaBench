
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int size; scalar_t__ data; } ;
struct TYPE_4__ {int flags; int type; } ;
typedef TYPE_1__ AVStereo3D ;
typedef TYPE_2__ AVPacketSideData ;


 int AV_LOG_ERROR ;
 int AV_LOG_INFO ;
 int AV_STEREO3D_FLAG_INVERT ;
 int av_log (void*,int ,char*,...) ;
 int av_stereo3d_type_name (int ) ;

__attribute__((used)) static void dump_stereo3d(void *ctx, AVPacketSideData *sd)
{
    AVStereo3D *stereo;

    if (sd->size < sizeof(*stereo)) {
        av_log(ctx, AV_LOG_ERROR, "invalid data");
        return;
    }

    stereo = (AVStereo3D *)sd->data;

    av_log(ctx, AV_LOG_INFO, "%s", av_stereo3d_type_name(stereo->type));

    if (stereo->flags & AV_STEREO3D_FLAG_INVERT)
        av_log(ctx, AV_LOG_INFO, " (inverted)");
}
