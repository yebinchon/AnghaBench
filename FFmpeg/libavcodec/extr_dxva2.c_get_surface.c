
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ format; void** data; } ;
struct TYPE_5__ {intptr_t nb_d3d11_views; void** d3d11_views; int * d3d11_texture; } ;
typedef int ID3D11Texture2D ;
typedef TYPE_1__ FFDXVASharedContext ;
typedef TYPE_2__ AVFrame ;
typedef int AVCodecContext ;


 int AV_LOG_ERROR ;
 scalar_t__ AV_PIX_FMT_D3D11 ;
 TYPE_1__* DXVA_SHARED_CONTEXT (int const*) ;
 int av_log (void*,int ,char*) ;

__attribute__((used)) static void *get_surface(const AVCodecContext *avctx, const AVFrame *frame)
{
    return frame->data[3];
}
