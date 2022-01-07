
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int VAAPIDecodePicture ;
struct TYPE_11__ {TYPE_3__* priv_data; } ;
struct TYPE_10__ {TYPE_2__* avctx; TYPE_1__* current_picture_ptr; } ;
struct TYPE_9__ {int height; } ;
struct TYPE_8__ {int * hwaccel_picture_private; } ;
typedef TYPE_3__ MpegEncContext ;
typedef TYPE_4__ AVCodecContext ;


 int ff_mpeg_draw_horiz_band (TYPE_3__*,int ,int ) ;
 int ff_vaapi_decode_issue (TYPE_4__*,int *) ;

__attribute__((used)) static int vaapi_mpeg2_end_frame(AVCodecContext *avctx)
{
    MpegEncContext *s = avctx->priv_data;
    VAAPIDecodePicture *pic = s->current_picture_ptr->hwaccel_picture_private;
    int ret;

    ret = ff_vaapi_decode_issue(avctx, pic);
    if (ret < 0)
        goto fail;

    ff_mpeg_draw_horiz_band(s, 0, s->avctx->height);

fail:
    return ret;
}
