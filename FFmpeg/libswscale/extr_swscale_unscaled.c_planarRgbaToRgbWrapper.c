
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {scalar_t__ srcFormat; int dstFormat; int srcW; } ;
typedef TYPE_1__ SwsContext ;


 int AV_LOG_ERROR ;




 scalar_t__ AV_PIX_FMT_GBRAP ;


 int av_get_pix_fmt_name (int) ;
 int av_log (TYPE_1__*,int ,char*,int ,int ) ;
 int gbr24ptopacked24 (int const**,int*,int *,int,int,int ) ;
 int gbraptopacked32 (int const**,int*,int *,int,int,int,int ) ;

__attribute__((used)) static int planarRgbaToRgbWrapper(SwsContext *c, const uint8_t *src[],
                                  int srcStride[], int srcSliceY, int srcSliceH,
                                  uint8_t *dst[], int dstStride[])
{
    int alpha_first = 0;
    const uint8_t *src102[] = { src[1], src[0], src[2], src[3] };
    const uint8_t *src201[] = { src[2], src[0], src[1], src[3] };
    int stride102[] = { srcStride[1], srcStride[0], srcStride[2], srcStride[3] };
    int stride201[] = { srcStride[2], srcStride[0], srcStride[1], srcStride[3] };

    if (c->srcFormat != AV_PIX_FMT_GBRAP) {
        av_log(c, AV_LOG_ERROR, "unsupported planar RGB conversion %s -> %s\n",
               av_get_pix_fmt_name(c->srcFormat),
               av_get_pix_fmt_name(c->dstFormat));
        return srcSliceH;
    }

    switch (c->dstFormat) {
    case 131:
        gbr24ptopacked24(src102, stride102,
                         dst[0] + srcSliceY * dstStride[0], dstStride[0],
                         srcSliceH, c->srcW);
        break;

    case 129:
        gbr24ptopacked24(src201, stride201,
                         dst[0] + srcSliceY * dstStride[0], dstStride[0],
                         srcSliceH, c->srcW);
        break;

    case 132:
        alpha_first = 1;
    case 128:
        gbraptopacked32(src201, stride201,
                        dst[0] + srcSliceY * dstStride[0], dstStride[0],
                        srcSliceH, alpha_first, c->srcW);
        break;

    case 133:
        alpha_first = 1;
    case 130:
        gbraptopacked32(src102, stride102,
                        dst[0] + srcSliceY * dstStride[0], dstStride[0],
                        srcSliceH, alpha_first, c->srcW);
        break;

    default:
        av_log(c, AV_LOG_ERROR,
               "unsupported planar RGB conversion %s -> %s\n",
               av_get_pix_fmt_name(c->srcFormat),
               av_get_pix_fmt_name(c->dstFormat));
    }

    return srcSliceH;
}
