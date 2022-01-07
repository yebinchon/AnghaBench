
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pix_fmt; } ;
typedef TYPE_1__ AVCodecContext ;


 scalar_t__ AV_PIX_FMT_D3D11 ;
 scalar_t__ AV_PIX_FMT_D3D11VA_VLD ;
 scalar_t__ CONFIG_D3D11VA ;

int ff_dxva2_is_d3d11(const AVCodecContext *avctx)
{
    if (CONFIG_D3D11VA)
        return avctx->pix_fmt == AV_PIX_FMT_D3D11VA_VLD ||
               avctx->pix_fmt == AV_PIX_FMT_D3D11;
    else
        return 0;
}
