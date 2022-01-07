
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
typedef int (* setup_lru_func ) (int **) ;
typedef enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
typedef scalar_t__ (* decode_slice_func ) (int *,int *,int,int,int **) ;
struct TYPE_7__ {int height; int width; int discard_damaged_percentage; int pix_fmt; } ;
typedef int GetByteContext ;
typedef int GetBitContext ;
typedef int AVFrame ;
typedef TYPE_1__ AVCodecContext ;


 int AVERROR_INVALIDDATA ;
 int avpriv_request_sample (TYPE_1__*,char*) ;
 int bytestream2_get_le32 (int *) ;
 int check_slice_size (TYPE_1__*,int const*,int,int,int) ;
 int ff_get_buffer (TYPE_1__*,int *,int ) ;
 int init_get_bits8 (int *,int const*,int) ;
 int load_buffer (TYPE_1__*,int const*,int,int *,int*,int*) ;

__attribute__((used)) static int dxtory_decode_v2(AVCodecContext *avctx, AVFrame *pic,
                            const uint8_t *src, int src_size,
                            decode_slice_func decode_slice,
                            setup_lru_func setup_lru,
                            enum AVPixelFormat fmt)
{
    GetByteContext gb, gb_check;
    GetBitContext gb2;
    int nslices, slice, line = 0;
    uint32_t off, slice_size;
    uint64_t off_check;
    uint8_t lru[3][8];
    int ret;

    ret = load_buffer(avctx, src, src_size, &gb, &nslices, &off);
    if (ret < 0)
        return ret;

    off_check = off;
    gb_check = gb;
    for (slice = 0; slice < nslices; slice++) {
        slice_size = bytestream2_get_le32(&gb_check);

        if (slice_size <= 16 + (avctx->height * avctx->width / (8 * nslices)))
            return AVERROR_INVALIDDATA;
        off_check += slice_size;
    }

    if (off_check - avctx->discard_damaged_percentage*off_check/100 > src_size)
        return AVERROR_INVALIDDATA;

    avctx->pix_fmt = fmt;
    if ((ret = ff_get_buffer(avctx, pic, 0)) < 0)
        return ret;

    for (slice = 0; slice < nslices; slice++) {
        slice_size = bytestream2_get_le32(&gb);

        setup_lru(lru);

        ret = check_slice_size(avctx, src, src_size, slice_size, off);
        if (ret < 0)
            return ret;

        if ((ret = init_get_bits8(&gb2, src + off + 16, slice_size - 16)) < 0)
            return ret;

        line += decode_slice(&gb2, pic, line, avctx->height - line, lru);

        off += slice_size;
    }

    if (avctx->height - line) {
        avpriv_request_sample(avctx, "Not enough slice data available");
    }

    return 0;
}
