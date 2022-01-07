
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_9__ {int flags; int name; TYPE_1__* comp; } ;
struct TYPE_8__ {int srcFormat; int dstFormat; int srcW; } ;
struct TYPE_7__ {int depth; } ;
typedef TYPE_2__ SwsContext ;
typedef TYPE_3__ AVPixFmtDescriptor ;


 int AV_LOG_ERROR ;




 int AV_PIX_FMT_FLAG_ALPHA ;
 int AV_PIX_FMT_FLAG_BE ;
 int AV_PIX_FMT_FLAG_PLANAR ;
 int AV_PIX_FMT_FLAG_RGB ;




 scalar_t__ HAVE_BIGENDIAN ;
 int av_log (TYPE_2__*,int ,char*,int ,int ) ;
 TYPE_3__* av_pix_fmt_desc_get (int) ;
 int packed16togbra16 (int const*,int,int **,int*,int,int,int,int,int ) ;

__attribute__((used)) static int Rgb16ToPlanarRgb16Wrapper(SwsContext *c, const uint8_t *src[],
                                     int srcStride[], int srcSliceY, int srcSliceH,
                                     uint8_t *dst[], int dstStride[])
{
    uint16_t *dst2013[] = { (uint16_t *)dst[2], (uint16_t *)dst[0], (uint16_t *)dst[1], (uint16_t *)dst[3] };
    uint16_t *dst1023[] = { (uint16_t *)dst[1], (uint16_t *)dst[0], (uint16_t *)dst[2], (uint16_t *)dst[3] };
    int stride2013[] = { dstStride[2], dstStride[0], dstStride[1], dstStride[3] };
    int stride1023[] = { dstStride[1], dstStride[0], dstStride[2], dstStride[3] };
    const AVPixFmtDescriptor *src_format = av_pix_fmt_desc_get(c->srcFormat);
    const AVPixFmtDescriptor *dst_format = av_pix_fmt_desc_get(c->dstFormat);
    int bpc = dst_format->comp[0].depth;
    int alpha = src_format->flags & AV_PIX_FMT_FLAG_ALPHA;
    int swap = 0;
    int i;

    if ( HAVE_BIGENDIAN && !(src_format->flags & AV_PIX_FMT_FLAG_BE) ||
        !HAVE_BIGENDIAN && src_format->flags & AV_PIX_FMT_FLAG_BE)
        swap++;
    if ( HAVE_BIGENDIAN && !(dst_format->flags & AV_PIX_FMT_FLAG_BE) ||
        !HAVE_BIGENDIAN && dst_format->flags & AV_PIX_FMT_FLAG_BE)
        swap += 2;

    if ((dst_format->flags & (AV_PIX_FMT_FLAG_PLANAR | AV_PIX_FMT_FLAG_RGB)) !=
        (AV_PIX_FMT_FLAG_PLANAR | AV_PIX_FMT_FLAG_RGB) || bpc < 9) {
        av_log(c, AV_LOG_ERROR, "unsupported conversion to planar RGB %s -> %s\n",
               src_format->name, dst_format->name);
        return srcSliceH;
    }

    for(i=0; i<4; i++) {
        dst2013[i] += stride2013[i] * srcSliceY / 2;
        dst1023[i] += stride1023[i] * srcSliceY / 2;
    }

    switch (c->srcFormat) {
    case 130:
    case 131:
    case 128:
    case 129:
        packed16togbra16(src[0], srcStride[0],
                         dst2013, stride2013, srcSliceH, alpha, swap,
                         16 - bpc, c->srcW);
        break;
    case 134:
    case 135:
    case 132:
    case 133:
        packed16togbra16(src[0], srcStride[0],
                         dst1023, stride1023, srcSliceH, alpha, swap,
                         16 - bpc, c->srcW);
        break;
    default:
        av_log(c, AV_LOG_ERROR,
               "unsupported conversion to planar RGB %s -> %s\n",
               src_format->name, dst_format->name);
    }

    return srcSliceH;
}
