
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nb_d3d11_views; scalar_t__ dxva2_service; scalar_t__* d3d11_views; int decoder_ref; } ;
typedef TYPE_1__ FFDXVASharedContext ;
typedef int AVCodecContext ;


 TYPE_1__* DXVA_SHARED_CONTEXT (int *) ;
 int ID3D11VideoDecoderOutputView_Release (scalar_t__) ;
 int IDirectXVideoDecoderService_Release (scalar_t__) ;
 int av_buffer_unref (int *) ;
 int av_freep (scalar_t__**) ;

int ff_dxva2_decode_uninit(AVCodecContext *avctx)
{
    FFDXVASharedContext *sctx = DXVA_SHARED_CONTEXT(avctx);
    int i;

    av_buffer_unref(&sctx->decoder_ref);
    return 0;
}
