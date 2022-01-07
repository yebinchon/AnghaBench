
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int const uint16_t ;
struct TYPE_9__ {int flags; int name; TYPE_1__* comp; } ;
struct TYPE_8__ {int srcFormat; int dstFormat; int srcW; } ;
struct TYPE_7__ {int depth; } ;
typedef TYPE_2__ SwsContext ;
typedef TYPE_3__ AVPixFmtDescriptor ;


 int AV_LOG_ERROR ;




 int AV_PIX_FMT_FLAG_BE ;
 int AV_PIX_FMT_FLAG_PLANAR ;
 int AV_PIX_FMT_FLAG_RGB ;




 scalar_t__ HAVE_BIGENDIAN ;
 int av_log (TYPE_2__*,int ,char*,int ,int ) ;
 TYPE_3__* av_pix_fmt_desc_get (int) ;
 int gbr16ptopacked16 (int const**,int*,int *,int,int,int,int,int,int ) ;

__attribute__((used)) static int planarRgb16ToRgb16Wrapper(SwsContext *c, const uint8_t *src[],
                                     int srcStride[], int srcSliceY, int srcSliceH,
                                     uint8_t *dst[], int dstStride[])
{
    const uint16_t *src102[] = { (uint16_t *)src[1], (uint16_t *)src[0], (uint16_t *)src[2], (uint16_t *)src[3] };
    const uint16_t *src201[] = { (uint16_t *)src[2], (uint16_t *)src[0], (uint16_t *)src[1], (uint16_t *)src[3] };
    int stride102[] = { srcStride[1], srcStride[0], srcStride[2], srcStride[3] };
    int stride201[] = { srcStride[2], srcStride[0], srcStride[1], srcStride[3] };
    const AVPixFmtDescriptor *src_format = av_pix_fmt_desc_get(c->srcFormat);
    const AVPixFmtDescriptor *dst_format = av_pix_fmt_desc_get(c->dstFormat);
    int bits_per_sample = src_format->comp[0].depth;
    int swap = 0;
    if ( HAVE_BIGENDIAN && !(src_format->flags & AV_PIX_FMT_FLAG_BE) ||
        !HAVE_BIGENDIAN && src_format->flags & AV_PIX_FMT_FLAG_BE)
        swap++;
    if ( HAVE_BIGENDIAN && !(dst_format->flags & AV_PIX_FMT_FLAG_BE) ||
        !HAVE_BIGENDIAN && dst_format->flags & AV_PIX_FMT_FLAG_BE)
        swap += 2;

    if ((src_format->flags & (AV_PIX_FMT_FLAG_PLANAR | AV_PIX_FMT_FLAG_RGB)) !=
        (AV_PIX_FMT_FLAG_PLANAR | AV_PIX_FMT_FLAG_RGB) ||
        bits_per_sample <= 8) {
        av_log(c, AV_LOG_ERROR, "unsupported planar RGB conversion %s -> %s\n",
               src_format->name, dst_format->name);
        return srcSliceH;
    }
    switch (c->dstFormat) {
    case 134:
    case 135:
        gbr16ptopacked16(src102, stride102,
                         dst[0] + srcSliceY * dstStride[0], dstStride[0],
                         srcSliceH, 0, swap, bits_per_sample, c->srcW);
        break;
    case 130:
    case 131:
        gbr16ptopacked16(src201, stride201,
                         dst[0] + srcSliceY * dstStride[0], dstStride[0],
                         srcSliceH, 0, swap, bits_per_sample, c->srcW);
        break;
    case 128:
    case 129:
         gbr16ptopacked16(src201, stride201,
                          dst[0] + srcSliceY * dstStride[0], dstStride[0],
                          srcSliceH, 1, swap, bits_per_sample, c->srcW);
        break;
    case 132:
    case 133:
        gbr16ptopacked16(src102, stride102,
                         dst[0] + srcSliceY * dstStride[0], dstStride[0],
                         srcSliceH, 1, swap, bits_per_sample, c->srcW);
        break;
    default:
        av_log(c, AV_LOG_ERROR,
               "unsupported planar RGB conversion %s -> %s\n",
               src_format->name, dst_format->name);
    }

    return srcSliceH;
}
