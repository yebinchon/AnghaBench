
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int bits_per_coded_sample; void* sample_rate; } ;
typedef int GetByteContext ;
typedef TYPE_1__ AVCodecContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int AV_LOG_INFO ;
 int ENOSYS ;
 void* MKTAG (float,char,char,char) ;

 int av_log (TYPE_1__*,int ,char*,...) ;
 int bytestream2_get_bytes_left (int *) ;
 void* bytestream2_get_le16 (int *) ;
 void* bytestream2_get_le32 (int *) ;
 int bytestream2_init (int *,int const*,int) ;
 int bytestream2_skip (int *,int) ;

__attribute__((used)) static int decode_wave_header(AVCodecContext *avctx, const uint8_t *header,
                              int header_size)
{
    int len, bps;
    short wave_format;
    GetByteContext gb;

    bytestream2_init(&gb, header, header_size);

    if (bytestream2_get_le32(&gb) != MKTAG('R', 'I', 'F', 'F')) {
        av_log(avctx, AV_LOG_ERROR, "missing RIFF tag\n");
        return AVERROR_INVALIDDATA;
    }

    bytestream2_skip(&gb, 4);

    if (bytestream2_get_le32(&gb) != MKTAG('W', 'A', 'V', 'E')) {
        av_log(avctx, AV_LOG_ERROR, "missing WAVE tag\n");
        return AVERROR_INVALIDDATA;
    }

    while (bytestream2_get_le32(&gb) != MKTAG('f', 'm', 't', ' ')) {
        len = bytestream2_get_le32(&gb);
        bytestream2_skip(&gb, len);
        if (len < 0 || bytestream2_get_bytes_left(&gb) < 16) {
            av_log(avctx, AV_LOG_ERROR, "no fmt chunk found\n");
            return AVERROR_INVALIDDATA;
        }
    }
    len = bytestream2_get_le32(&gb);

    if (len < 16) {
        av_log(avctx, AV_LOG_ERROR, "fmt chunk was too short\n");
        return AVERROR_INVALIDDATA;
    }

    wave_format = bytestream2_get_le16(&gb);

    switch (wave_format) {
    case 128:
        break;
    default:
        av_log(avctx, AV_LOG_ERROR, "unsupported wave format\n");
        return AVERROR(ENOSYS);
    }

    bytestream2_skip(&gb, 2);
    avctx->sample_rate = bytestream2_get_le32(&gb);
    bytestream2_skip(&gb, 4);
    bytestream2_skip(&gb, 2);
    bps = bytestream2_get_le16(&gb);
    avctx->bits_per_coded_sample = bps;

    if (bps != 16 && bps != 8) {
        av_log(avctx, AV_LOG_ERROR, "unsupported number of bits per sample: %d\n", bps);
        return AVERROR(ENOSYS);
    }

    len -= 16;
    if (len > 0)
        av_log(avctx, AV_LOG_INFO, "%d header bytes unparsed\n", len);

    return 0;
}
