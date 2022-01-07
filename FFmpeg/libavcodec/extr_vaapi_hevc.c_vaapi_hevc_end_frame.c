
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {int LastSliceOfPic; } ;
struct TYPE_13__ {TYPE_1__ fields; } ;
struct TYPE_18__ {TYPE_2__ LongSliceFlags; } ;
struct TYPE_15__ {int pic; scalar_t__ last_size; int last_buffer; TYPE_9__ last_slice_param; } ;
typedef TYPE_4__ VAAPIDecodePictureHEVC ;
struct TYPE_17__ {TYPE_5__* priv_data; } ;
struct TYPE_16__ {TYPE_3__* ref; } ;
struct TYPE_14__ {TYPE_4__* hwaccel_picture_private; } ;
typedef TYPE_5__ HEVCContext ;
typedef TYPE_6__ AVCodecContext ;


 int ff_vaapi_decode_cancel (TYPE_6__*,int *) ;
 int ff_vaapi_decode_issue (TYPE_6__*,int *) ;
 int ff_vaapi_decode_make_slice_buffer (TYPE_6__*,int *,TYPE_9__*,int,int ,scalar_t__) ;

__attribute__((used)) static int vaapi_hevc_end_frame(AVCodecContext *avctx)
{
    const HEVCContext *h = avctx->priv_data;
    VAAPIDecodePictureHEVC *pic = h->ref->hwaccel_picture_private;
    int ret;

    if (pic->last_size) {
        pic->last_slice_param.LongSliceFlags.fields.LastSliceOfPic = 1;
        ret = ff_vaapi_decode_make_slice_buffer(avctx, &pic->pic,
                                                &pic->last_slice_param, sizeof(pic->last_slice_param),
                                                pic->last_buffer, pic->last_size);
        if (ret < 0)
            goto fail;
    }


    ret = ff_vaapi_decode_issue(avctx, &pic->pic);
    if (ret < 0)
        goto fail;

    return 0;
fail:
    ff_vaapi_decode_cancel(avctx, &pic->pic);
    return ret;
}
