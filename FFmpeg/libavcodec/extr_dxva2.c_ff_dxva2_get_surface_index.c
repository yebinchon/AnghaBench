
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_20__ {scalar_t__ pix_fmt; } ;
struct TYPE_16__ {void** surface; } ;
struct TYPE_19__ {TYPE_2__ dxva2; } ;
struct TYPE_18__ {int * data; } ;
struct TYPE_15__ {int ArraySlice; } ;
struct TYPE_17__ {TYPE_1__ Texture2D; } ;
typedef int ID3D11VideoDecoderOutputView ;
typedef TYPE_3__ D3D11_VIDEO_DECODER_OUTPUT_VIEW_DESC ;
typedef TYPE_4__ AVFrame ;
typedef TYPE_5__ AVDXVAContext ;
typedef TYPE_6__ AVCodecContext ;


 scalar_t__ AV_PIX_FMT_D3D11 ;
 scalar_t__ AV_PIX_FMT_D3D11VA_VLD ;
 scalar_t__ AV_PIX_FMT_DXVA2_VLD ;
 unsigned int DXVA_CONTEXT_COUNT (TYPE_6__ const*,TYPE_5__ const*) ;
 int ID3D11VideoDecoderOutputView_GetDesc (int *,TYPE_3__*) ;
 int assert (int ) ;
 void* get_surface (TYPE_6__ const*,TYPE_4__ const*) ;

unsigned ff_dxva2_get_surface_index(const AVCodecContext *avctx,
                                    const AVDXVAContext *ctx,
                                    const AVFrame *frame)
{
    void *surface = get_surface(avctx, frame);
    unsigned i;
    assert(0);
    return 0;
}
