
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int8_t ;
struct TYPE_3__ {scalar_t__ flags; int type; } ;
typedef TYPE_1__ AVStereo3D ;
typedef int AVIOContext ;
typedef int AVFormatContext ;


 int AV_LOG_WARNING ;



 int av_log (int *,int ,char*,scalar_t__) ;
 scalar_t__ av_stereo3d_type_name (int) ;
 int avio_w8 (int *,int) ;
 int avio_wb32 (int *,int) ;
 int ffio_wfourcc (int *,char*) ;

__attribute__((used)) static int mov_write_st3d_tag(AVFormatContext *s, AVIOContext *pb, AVStereo3D *stereo_3d)
{
    int8_t stereo_mode;

    if (stereo_3d->flags != 0) {
        av_log(s, AV_LOG_WARNING, "Unsupported stereo_3d flags %x. st3d not written.\n", stereo_3d->flags);
        return 0;
    }

    switch (stereo_3d->type) {
    case 130:
        stereo_mode = 0;
        break;
    case 128:
        stereo_mode = 1;
        break;
    case 129:
        stereo_mode = 2;
        break;
    default:
        av_log(s, AV_LOG_WARNING, "Unsupported stereo_3d type %s. st3d not written.\n", av_stereo3d_type_name(stereo_3d->type));
        return 0;
    }
    avio_wb32(pb, 13);
    ffio_wfourcc(pb, "st3d");
    avio_wb32(pb, 0);
    avio_w8(pb, stereo_mode);
    return 13;
}
