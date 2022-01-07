
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int type; int flags; } ;
typedef int MatroskaVideoStereoModeType ;
typedef int AVStream ;
typedef TYPE_1__ AVStereo3D ;


 int AVERROR (int ) ;
 int AV_PKT_DATA_STEREO3D ;
 int AV_STEREO3D_2D ;
 int AV_STEREO3D_CHECKERBOARD ;
 int AV_STEREO3D_COLUMNS ;
 int AV_STEREO3D_FLAG_INVERT ;
 int AV_STEREO3D_FRAMESEQUENCE ;
 int AV_STEREO3D_LINES ;
 int AV_STEREO3D_SIDEBYSIDE ;
 int AV_STEREO3D_TOPBOTTOM ;
 int ENOMEM ;
 int av_freep (TYPE_1__**) ;
 TYPE_1__* av_stereo3d_alloc () ;
 int av_stream_add_side_data (int *,int ,int *,int) ;

int ff_mkv_stereo3d_conv(AVStream *st, MatroskaVideoStereoModeType stereo_mode)
{
    AVStereo3D *stereo;
    int ret;

    stereo = av_stereo3d_alloc();
    if (!stereo)
        return AVERROR(ENOMEM);


    switch (stereo_mode) {
    case 132:
        stereo->type = AV_STEREO3D_2D;
        break;
    case 131:
        stereo->flags |= AV_STEREO3D_FLAG_INVERT;
    case 133:
        stereo->type = AV_STEREO3D_SIDEBYSIDE;
        break;
    case 138:
        stereo->flags |= AV_STEREO3D_FLAG_INVERT;
    case 128:
        stereo->type = AV_STEREO3D_TOPBOTTOM;
        break;
    case 136:
        stereo->flags |= AV_STEREO3D_FLAG_INVERT;
    case 137:
        stereo->type = AV_STEREO3D_CHECKERBOARD;
        break;
    case 129:
        stereo->flags |= AV_STEREO3D_FLAG_INVERT;
    case 130:
        stereo->type = AV_STEREO3D_LINES;
        break;
    case 134:
        stereo->flags |= AV_STEREO3D_FLAG_INVERT;
    case 135:
        stereo->type = AV_STEREO3D_COLUMNS;
        break;
    case 139:
        stereo->flags |= AV_STEREO3D_FLAG_INVERT;
    case 140:
        stereo->type = AV_STEREO3D_FRAMESEQUENCE;
        break;
    }

    ret = av_stream_add_side_data(st, AV_PKT_DATA_STEREO3D, (uint8_t *)stereo,
                                  sizeof(*stereo));
    if (ret < 0) {
        av_freep(&stereo);
        return ret;
    }

    return 0;
}
