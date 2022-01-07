
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
struct TYPE_9__ {int width; int height; } ;
struct TYPE_7__ {int (* bswap_buf ) (int ,int const*,unsigned int) ;} ;
struct TYPE_8__ {int version; int g; int g2; int bitstream_buffer; int gb; TYPE_1__ bbdsp; int bitstream_buffer_size; TYPE_6__* avctx; int * last_frame_buffer; int * frame_buffer; } ;
typedef TYPE_2__ FourXContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 unsigned int AV_RL16 (int const*) ;
 unsigned int AV_RL32 (int const*) ;
 int ENOMEM ;
 unsigned int FFMAX (int,int ) ;
 int INT_MAX ;
 int av_fast_padded_malloc (int *,int *,unsigned int) ;
 int av_log (TYPE_6__*,int ,char*,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int bytestream2_init (int *,int const*,int) ;
 int decode_p_block (TYPE_2__*,int *,int *,int,int,int const) ;
 int init_get_bits (int *,int ,int) ;
 int init_mv (TYPE_2__*,int const) ;
 int stub1 (int ,int const*,unsigned int) ;

__attribute__((used)) static int decode_p_frame(FourXContext *f, const uint8_t *buf, int length)
{
    int x, y;
    const int width = f->avctx->width;
    const int height = f->avctx->height;
    uint16_t *dst = f->frame_buffer;
    uint16_t *src;
    unsigned int bitstream_size, bytestream_size, wordstream_size, extra,
                 bytestream_offset, wordstream_offset;
    int ret;

    src = f->last_frame_buffer;

    if (f->version > 1) {
        extra = 20;
        if (length < extra)
            return AVERROR_INVALIDDATA;
        bitstream_size = AV_RL32(buf + 8);
        wordstream_size = AV_RL32(buf + 12);
        bytestream_size = AV_RL32(buf + 16);
    } else {
        extra = 0;
        bitstream_size = AV_RL16(buf - 4);
        wordstream_size = AV_RL16(buf - 2);
        bytestream_size = FFMAX(length - bitstream_size - wordstream_size, 0);
    }

    if (bitstream_size > length || bitstream_size >= INT_MAX/8 ||
        bytestream_size > length - bitstream_size ||
        wordstream_size > length - bytestream_size - bitstream_size ||
        extra > length - bytestream_size - bitstream_size - wordstream_size) {
        av_log(f->avctx, AV_LOG_ERROR, "lengths %d %d %d %d\n", bitstream_size, bytestream_size, wordstream_size,
        bitstream_size+ bytestream_size+ wordstream_size - length);
        return AVERROR_INVALIDDATA;
    }

    av_fast_padded_malloc(&f->bitstream_buffer, &f->bitstream_buffer_size,
                          bitstream_size);
    if (!f->bitstream_buffer)
        return AVERROR(ENOMEM);
    f->bbdsp.bswap_buf(f->bitstream_buffer, (const uint32_t *) (buf + extra),
                       bitstream_size / 4);
    init_get_bits(&f->gb, f->bitstream_buffer, 8 * bitstream_size);

    wordstream_offset = extra + bitstream_size;
    bytestream_offset = extra + bitstream_size + wordstream_size;
    bytestream2_init(&f->g2, buf + wordstream_offset,
                     length - wordstream_offset);
    bytestream2_init(&f->g, buf + bytestream_offset,
                     length - bytestream_offset);

    init_mv(f, width * 2);

    for (y = 0; y < height; y += 8) {
        for (x = 0; x < width; x += 8)
            if ((ret = decode_p_block(f, dst + x, src + x, 3, 3, width)) < 0)
                return ret;
        src += 8 * width;
        dst += 8 * width;
    }

    return 0;
}
