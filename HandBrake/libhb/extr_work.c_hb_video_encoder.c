
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* codec_param; } ;
typedef TYPE_1__ hb_work_object_t ;
typedef int hb_handle_t ;


 void* AV_CODEC_ID_H264 ;
 void* AV_CODEC_ID_HEVC ;
 void* AV_CODEC_ID_MPEG2VIDEO ;
 void* AV_CODEC_ID_MPEG4 ;
 void* AV_CODEC_ID_VP8 ;
 void* AV_CODEC_ID_VP9 ;
 int WORK_ENCAVCODEC ;
 int WORK_ENCQSV ;
 int WORK_ENCTHEORA ;
 int WORK_ENCX264 ;
 int WORK_ENCX265 ;
 int hb_error (char*,int) ;
 TYPE_1__* hb_get_work (int *,int ) ;

hb_work_object_t* hb_video_encoder(hb_handle_t *h, int vcodec)
{
    hb_work_object_t * w = ((void*)0);

    switch (vcodec)
    {
        case 146:
            w = hb_get_work(h, WORK_ENCAVCODEC);
            w->codec_param = AV_CODEC_ID_MPEG4;
            break;
        case 147:
            w = hb_get_work(h, WORK_ENCAVCODEC);
            w->codec_param = AV_CODEC_ID_MPEG2VIDEO;
            break;
        case 141:
            w = hb_get_work(h, WORK_ENCAVCODEC);
            w->codec_param = AV_CODEC_ID_VP8;
            break;
        case 140:
            w = hb_get_work(h, WORK_ENCAVCODEC);
            w->codec_param = AV_CODEC_ID_VP9;
            break;
        case 132:
        case 133:
            w = hb_get_work(h, WORK_ENCX264);
            break;
        case 137:
        case 136:
        case 135:
            w = hb_get_work(h, WORK_ENCQSV);
            break;
        case 134:
            w = hb_get_work(h, WORK_ENCTHEORA);
            break;
        default:
            hb_error("Unknown video codec (0x%x)", vcodec );
    }

    return w;
}
