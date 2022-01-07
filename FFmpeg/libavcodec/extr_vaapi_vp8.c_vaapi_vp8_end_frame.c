
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__** framep; } ;
typedef TYPE_2__ VP8Context ;
typedef int VAAPIDecodePicture ;
struct TYPE_8__ {TYPE_2__* priv_data; } ;
struct TYPE_6__ {int * hwaccel_picture_private; } ;
typedef TYPE_3__ AVCodecContext ;


 size_t VP56_FRAME_CURRENT ;
 int ff_vaapi_decode_issue (TYPE_3__*,int *) ;

__attribute__((used)) static int vaapi_vp8_end_frame(AVCodecContext *avctx)
{
    const VP8Context *s = avctx->priv_data;
    VAAPIDecodePicture *pic = s->framep[VP56_FRAME_CURRENT]->hwaccel_picture_private;

    return ff_vaapi_decode_issue(avctx, pic);
}
