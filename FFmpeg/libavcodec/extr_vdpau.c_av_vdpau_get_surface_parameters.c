
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int VdpChromaType ;
struct TYPE_3__ {int coded_width; int coded_height; int sw_pix_fmt; } ;
typedef TYPE_1__ AVCodecContext ;


 int AVERROR (int ) ;






 int ENOSYS ;
 int VDP_CHROMA_TYPE_420 ;
 int VDP_CHROMA_TYPE_422 ;
 int VDP_CHROMA_TYPE_444 ;

int av_vdpau_get_surface_parameters(AVCodecContext *avctx,
                                    VdpChromaType *type,
                                    uint32_t *width, uint32_t *height)
{
    VdpChromaType t;
    uint32_t w = avctx->coded_width;
    uint32_t h = avctx->coded_height;


    switch (avctx->sw_pix_fmt) {
    case 133:
    case 130:
        t = VDP_CHROMA_TYPE_420;
        w = (w + 1) & ~1;
        h = (h + 3) & ~3;
        break;
    case 132:
    case 129:
        t = VDP_CHROMA_TYPE_422;
        w = (w + 1) & ~1;
        h = (h + 1) & ~1;
        break;
    case 131:
    case 128:
        t = VDP_CHROMA_TYPE_444;
        h = (h + 1) & ~1;
        break;
    default:
        return AVERROR(ENOSYS);
    }

    if (type)
        *type = t;
    if (width)
        *width = w;
    if (height)
        *height = h;
    return 0;
}
