
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_5__ {scalar_t__ codec_id; scalar_t__ frame_number; TYPE_1__* priv_data; } ;
struct TYPE_4__ {int sequence_number; int const* bytestream; } ;
typedef TYPE_1__ PNGEncContext ;
typedef TYPE_2__ AVCodecContext ;
typedef int AVCRC ;


 scalar_t__ AV_CODEC_ID_PNG ;
 int AV_CRC_32_IEEE_LE ;
 int MKBETAG (float,char,char,char) ;
 int MKTAG (char,char,char,char) ;
 int av_crc (int const*,int,int const*,int) ;
 int * av_crc_get_table (int ) ;
 int bytestream_put_be32 (int const**,int) ;
 int memcpy (int const*,int const*,int) ;
 int png_write_chunk (int const**,int ,int const*,int) ;

__attribute__((used)) static void png_write_image_data(AVCodecContext *avctx,
                                 const uint8_t *buf, int length)
{
    PNGEncContext *s = avctx->priv_data;
    const AVCRC *crc_table = av_crc_get_table(AV_CRC_32_IEEE_LE);
    uint32_t crc = ~0U;

    if (avctx->codec_id == AV_CODEC_ID_PNG || avctx->frame_number == 0) {
        png_write_chunk(&s->bytestream, MKTAG('I', 'D', 'A', 'T'), buf, length);
        return;
    }

    bytestream_put_be32(&s->bytestream, length + 4);

    bytestream_put_be32(&s->bytestream, MKBETAG('f', 'd', 'A', 'T'));
    bytestream_put_be32(&s->bytestream, s->sequence_number);
    crc = av_crc(crc_table, crc, s->bytestream - 8, 8);

    crc = av_crc(crc_table, crc, buf, length);
    memcpy(s->bytestream, buf, length);
    s->bytestream += length;

    bytestream_put_be32(&s->bytestream, ~crc);

    ++s->sequence_number;
}
