
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int VAAPIDecodePicture ;
struct TYPE_6__ {TYPE_1__* priv_data; } ;
struct TYPE_5__ {int * hwaccel_picture_private; } ;
typedef TYPE_1__ MJpegDecodeContext ;
typedef TYPE_2__ AVCodecContext ;


 int ff_vaapi_decode_issue (TYPE_2__*,int *) ;

__attribute__((used)) static int vaapi_mjpeg_end_frame(AVCodecContext *avctx)
{
    const MJpegDecodeContext *s = avctx->priv_data;
    VAAPIDecodePicture *pic = s->hwaccel_picture_private;

    return ff_vaapi_decode_issue(avctx, pic);
}
