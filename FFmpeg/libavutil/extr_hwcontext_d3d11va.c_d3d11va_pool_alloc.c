
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {int texture; } ;
struct TYPE_12__ {TYPE_5__* hwctx; TYPE_1__* internal; } ;
struct TYPE_11__ {scalar_t__ nb_surfaces_used; } ;
struct TYPE_10__ {scalar_t__ ArraySize; } ;
struct TYPE_9__ {TYPE_3__* priv; } ;
typedef TYPE_2__ D3D11_TEXTURE2D_DESC ;
typedef TYPE_3__ D3D11VAFramesContext ;
typedef TYPE_4__ AVHWFramesContext ;
typedef TYPE_5__ AVD3D11VAFramesContext ;
typedef int AVBufferRef ;


 int AV_LOG_ERROR ;
 int ID3D11Texture2D_AddRef (int ) ;
 int ID3D11Texture2D_GetDesc (int ,TYPE_2__*) ;
 int av_log (TYPE_4__*,int ,char*) ;
 int * d3d11va_alloc_single (TYPE_4__*) ;
 int * wrap_texture_buf (int ,int ) ;

__attribute__((used)) static AVBufferRef *d3d11va_pool_alloc(void *opaque, int size)
{
    AVHWFramesContext *ctx = (AVHWFramesContext*)opaque;
    D3D11VAFramesContext *s = ctx->internal->priv;
    AVD3D11VAFramesContext *hwctx = ctx->hwctx;
    D3D11_TEXTURE2D_DESC texDesc;

    if (!hwctx->texture)
        return d3d11va_alloc_single(ctx);

    ID3D11Texture2D_GetDesc(hwctx->texture, &texDesc);

    if (s->nb_surfaces_used >= texDesc.ArraySize) {
        av_log(ctx, AV_LOG_ERROR, "Static surface pool size exceeded.\n");
        return ((void*)0);
    }

    ID3D11Texture2D_AddRef(hwctx->texture);
    return wrap_texture_buf(hwctx->texture, s->nb_surfaces_used++);
}
