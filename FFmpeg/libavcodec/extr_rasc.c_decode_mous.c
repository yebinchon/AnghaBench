
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {unsigned int width; unsigned int height; TYPE_1__* priv_data; } ;
struct TYPE_5__ {unsigned int cursor_w; unsigned int cursor_h; int delta; int cursor; int cursor_size; int gb; } ;
typedef TYPE_1__ RASCContext ;
typedef int GetByteContext ;
typedef int AVPacket ;
typedef TYPE_2__ AVCodecContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int ENOMEM ;
 int av_fast_padded_malloc (int *,int *,unsigned int) ;
 unsigned int bytestream2_get_le32 (int *) ;
 int bytestream2_skip (int *,unsigned int) ;
 unsigned int bytestream2_tell (int *) ;
 int decode_zlib (TYPE_2__*,int *,unsigned int,unsigned int) ;
 int memcpy (int ,int ,unsigned int) ;

__attribute__((used)) static int decode_mous(AVCodecContext *avctx,
                       AVPacket *avpkt, unsigned size)
{
    RASCContext *s = avctx->priv_data;
    GetByteContext *gb = &s->gb;
    unsigned w, h, pos, uncompressed_size;
    int ret;

    pos = bytestream2_tell(gb);
    bytestream2_skip(gb, 8);
    w = bytestream2_get_le32(gb);
    h = bytestream2_get_le32(gb);
    bytestream2_skip(gb, 12);
    uncompressed_size = bytestream2_get_le32(gb);

    if (w > avctx->width || h > avctx->height)
        return AVERROR_INVALIDDATA;

    if (uncompressed_size != 3 * w * h)
        return AVERROR_INVALIDDATA;

    av_fast_padded_malloc(&s->cursor, &s->cursor_size, uncompressed_size);
    if (!s->cursor)
        return AVERROR(ENOMEM);

    ret = decode_zlib(avctx, avpkt,
                      size - (bytestream2_tell(gb) - pos),
                      uncompressed_size);
    if (ret < 0)
        return ret;
    memcpy(s->cursor, s->delta, uncompressed_size);

    bytestream2_skip(gb, size - (bytestream2_tell(gb) - pos));

    s->cursor_w = w;
    s->cursor_h = h;

    return 0;
}
