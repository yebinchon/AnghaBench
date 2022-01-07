
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {TYPE_2__* avctx; TYPE_1__* current_picture_ptr; } ;
struct TYPE_11__ {TYPE_4__ s; } ;
typedef TYPE_3__ VC1Context ;
typedef int VAAPIDecodePicture ;
struct TYPE_13__ {TYPE_3__* priv_data; } ;
struct TYPE_10__ {int height; } ;
struct TYPE_9__ {int * hwaccel_picture_private; } ;
typedef TYPE_4__ MpegEncContext ;
typedef TYPE_5__ AVCodecContext ;


 int ff_mpeg_draw_horiz_band (TYPE_4__*,int ,int ) ;
 int ff_vaapi_decode_issue (TYPE_5__*,int *) ;

__attribute__((used)) static int vaapi_vc1_end_frame(AVCodecContext *avctx)
{
    VC1Context *v = avctx->priv_data;
    MpegEncContext *s = &v->s;
    VAAPIDecodePicture *pic = s->current_picture_ptr->hwaccel_picture_private;
    int ret;

    ret = ff_vaapi_decode_issue(avctx, pic);
    if (ret < 0)
        goto fail;

    ff_mpeg_draw_horiz_band(s, 0, s->avctx->height);

fail:
    return ret;
}
