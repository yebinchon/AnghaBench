
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int slice_buffers; scalar_t__ slices_allocated; scalar_t__ nb_slices; scalar_t__ nb_param_buffers; } ;
typedef TYPE_1__ VAAPIDecodePicture ;
typedef int AVCodecContext ;


 int av_freep (int *) ;
 int ff_vaapi_decode_destroy_buffers (int *,TYPE_1__*) ;

int ff_vaapi_decode_cancel(AVCodecContext *avctx,
                           VAAPIDecodePicture *pic)
{
    ff_vaapi_decode_destroy_buffers(avctx, pic);

    pic->nb_param_buffers = 0;
    pic->nb_slices = 0;
    pic->slices_allocated = 0;
    av_freep(&pic->slice_buffers);

    return 0;
}
