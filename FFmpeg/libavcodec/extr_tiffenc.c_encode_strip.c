
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int8_t ;
struct TYPE_4__ {unsigned long buf_size; unsigned long* buf; unsigned long buf_start; int avctx; int lzws; } ;
typedef TYPE_1__ TiffEncoderContext ;


 int AVERROR (int ) ;
 int AVERROR_EXTERNAL ;
 int AV_LOG_ERROR ;
 int EINVAL ;





 int Z_OK ;
 int av_log (int ,int ,char*,...) ;
 int check_size (TYPE_1__*,int) ;
 int compress (int *,unsigned long*,int const*,int) ;
 int ff_lzw_encode (int ,int const*,int) ;
 int ff_rle_encode (int *,unsigned long,int const*,int,int,int,int,int,int ) ;
 int memcpy (int *,int const*,int) ;

__attribute__((used)) static int encode_strip(TiffEncoderContext *s, const int8_t *src,
                        uint8_t *dst, int n, int compr)
{
    switch (compr) {
    case 128:
        if (check_size(s, n))
            return AVERROR(EINVAL);
        memcpy(dst, src, n);
        return n;
    case 129:
        return ff_rle_encode(dst, s->buf_size - (*s->buf - s->buf_start),
                             src, 1, n, 2, 0xff, -1, 0);
    case 130:
        return ff_lzw_encode(s->lzws, src, n);
    default:
        av_log(s->avctx, AV_LOG_ERROR, "Unsupported compression method: %d\n",
               compr);
        return AVERROR(EINVAL);
    }
}
