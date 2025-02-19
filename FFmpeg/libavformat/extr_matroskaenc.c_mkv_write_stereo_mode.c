
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_15__ {int value; } ;
struct TYPE_14__ {int metadata; } ;
struct TYPE_13__ {scalar_t__ type; scalar_t__ data; } ;
struct TYPE_12__ {int type; int flags; } ;
struct TYPE_11__ {int nb_side_data; TYPE_3__* side_data; int metadata; } ;
typedef int MatroskaVideoStereoModeType ;
typedef TYPE_1__ AVStream ;
typedef TYPE_2__ AVStereo3D ;
typedef TYPE_3__ AVPacketSideData ;
typedef int AVIOContext ;
typedef TYPE_4__ AVFormatContext ;
typedef TYPE_5__ AVDictionaryEntry ;


 int AVERROR (int ) ;
 int AV_LOG_ERROR ;
 scalar_t__ AV_PKT_DATA_STEREO3D ;



 int AV_STEREO3D_FLAG_INVERT ;




 int EINVAL ;
 int MATROSKA_ID_VIDEOSTEREOMODE ;
 int MATROSKA_VIDEO_STEREOMODE_TYPE_BOTH_EYES_BLOCK_LR ;
 int MATROSKA_VIDEO_STEREOMODE_TYPE_CHECKERBOARD_LR ;
 int MATROSKA_VIDEO_STEREOMODE_TYPE_COL_INTERLEAVED_LR ;
 int MATROSKA_VIDEO_STEREOMODE_TYPE_LEFT_RIGHT ;
 int MATROSKA_VIDEO_STEREOMODE_TYPE_MONO ;
 int MATROSKA_VIDEO_STEREOMODE_TYPE_NB ;
 int MATROSKA_VIDEO_STEREOMODE_TYPE_RIGHT_LEFT ;
 int MATROSKA_VIDEO_STEREOMODE_TYPE_ROW_INTERLEAVED_LR ;
 int MATROSKA_VIDEO_STEREOMODE_TYPE_TOP_BOTTOM ;
 int MODE_WEBM ;
 int atoi (int ) ;
 TYPE_5__* av_dict_get (int ,char*,int *,int ) ;
 int av_log (TYPE_4__*,int ,char*) ;
 int * ff_matroska_video_stereo_mode ;
 int ff_mkv_stereo3d_conv (TYPE_1__*,int) ;
 int put_ebml_uint (int *,int ,int) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int mkv_write_stereo_mode(AVFormatContext *s, AVIOContext *pb,
                                 AVStream *st, int mode, int *h_width, int *h_height)
{
    int i;
    int ret = 0;
    AVDictionaryEntry *tag;
    MatroskaVideoStereoModeType format = MATROSKA_VIDEO_STEREOMODE_TYPE_NB;

    *h_width = 1;
    *h_height = 1;

    if ((tag = av_dict_get(st->metadata, "stereo_mode", ((void*)0), 0)) ||
        (tag = av_dict_get( s->metadata, "stereo_mode", ((void*)0), 0))) {
        int stereo_mode = atoi(tag->value);

        for (i=0; i<MATROSKA_VIDEO_STEREOMODE_TYPE_NB; i++)
            if (!strcmp(tag->value, ff_matroska_video_stereo_mode[i])){
                stereo_mode = i;
                break;
            }

        if (stereo_mode < MATROSKA_VIDEO_STEREOMODE_TYPE_NB &&
            stereo_mode != 10 && stereo_mode != 12) {
            int ret = ff_mkv_stereo3d_conv(st, stereo_mode);
            if (ret < 0)
                return ret;
        }
    }


    for (i = 0; i < st->nb_side_data; i++) {
        AVPacketSideData sd = st->side_data[i];
        if (sd.type == AV_PKT_DATA_STEREO3D) {
            AVStereo3D *stereo = (AVStereo3D *)sd.data;

            switch (stereo->type) {
            case 134:
                format = MATROSKA_VIDEO_STEREOMODE_TYPE_MONO;
                break;
            case 129:
                format = (stereo->flags & AV_STEREO3D_FLAG_INVERT)
                    ? MATROSKA_VIDEO_STEREOMODE_TYPE_RIGHT_LEFT
                    : MATROSKA_VIDEO_STEREOMODE_TYPE_LEFT_RIGHT;
                *h_width = 2;
                break;
            case 128:
                format = MATROSKA_VIDEO_STEREOMODE_TYPE_TOP_BOTTOM;
                if (stereo->flags & AV_STEREO3D_FLAG_INVERT)
                    format--;
                *h_height = 2;
                break;
            case 133:
                format = MATROSKA_VIDEO_STEREOMODE_TYPE_CHECKERBOARD_LR;
                if (stereo->flags & AV_STEREO3D_FLAG_INVERT)
                    format--;
                break;
            case 130:
                format = MATROSKA_VIDEO_STEREOMODE_TYPE_ROW_INTERLEAVED_LR;
                if (stereo->flags & AV_STEREO3D_FLAG_INVERT)
                    format--;
                *h_height = 2;
                break;
            case 132:
                format = MATROSKA_VIDEO_STEREOMODE_TYPE_COL_INTERLEAVED_LR;
                if (stereo->flags & AV_STEREO3D_FLAG_INVERT)
                    format--;
                *h_width = 2;
                break;
            case 131:
                format = MATROSKA_VIDEO_STEREOMODE_TYPE_BOTH_EYES_BLOCK_LR;
                if (stereo->flags & AV_STEREO3D_FLAG_INVERT)
                    format++;
                break;
            }
            break;
        }
    }

    if (format == MATROSKA_VIDEO_STEREOMODE_TYPE_NB)
        return ret;


    if ((mode == MODE_WEBM &&
        format > MATROSKA_VIDEO_STEREOMODE_TYPE_TOP_BOTTOM &&
        format != MATROSKA_VIDEO_STEREOMODE_TYPE_RIGHT_LEFT)
        || format >= MATROSKA_VIDEO_STEREOMODE_TYPE_NB) {
        av_log(s, AV_LOG_ERROR,
               "The specified stereo mode is not valid.\n");
        format = MATROSKA_VIDEO_STEREOMODE_TYPE_NB;
        return AVERROR(EINVAL);
    }


    put_ebml_uint(pb, MATROSKA_ID_VIDEOSTEREOMODE, format);

    return ret;
}
