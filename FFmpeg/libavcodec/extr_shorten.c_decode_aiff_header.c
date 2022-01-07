
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_6__ {int bits_per_coded_sample; int sample_rate; TYPE_1__* priv_data; } ;
struct TYPE_5__ {int swap; } ;
typedef TYPE_1__ ShortenContext ;
typedef int GetByteContext ;
typedef TYPE_2__ AVCodecContext ;


 int AVERROR (int ) ;
 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int AV_LOG_INFO ;
 int ENOSYS ;
 scalar_t__ MKTAG (char,char,float,char) ;
 int av_log (TYPE_2__*,int ,char*,...) ;
 int bytestream2_get_be16 (int *) ;
 int bytestream2_get_be32 (int *) ;
 int bytestream2_get_be64 (int *) ;
 long long bytestream2_get_bytes_left (int *) ;
 scalar_t__ bytestream2_get_le32 (int *) ;
 int bytestream2_init (int *,int const*,int) ;
 int bytestream2_skip (int *,int) ;

__attribute__((used)) static int decode_aiff_header(AVCodecContext *avctx, const uint8_t *header,
                              int header_size)
{
    ShortenContext *s = avctx->priv_data;
    int len, bps, exp;
    GetByteContext gb;
    uint64_t val;
    uint32_t tag;

    bytestream2_init(&gb, header, header_size);

    if (bytestream2_get_le32(&gb) != MKTAG('F', 'O', 'R', 'M')) {
        av_log(avctx, AV_LOG_ERROR, "missing FORM tag\n");
        return AVERROR_INVALIDDATA;
    }

    bytestream2_skip(&gb, 4);

    tag = bytestream2_get_le32(&gb);
    if (tag != MKTAG('A', 'I', 'F', 'F') &&
        tag != MKTAG('A', 'I', 'F', 'C')) {
        av_log(avctx, AV_LOG_ERROR, "missing AIFF tag\n");
        return AVERROR_INVALIDDATA;
    }

    while (bytestream2_get_le32(&gb) != MKTAG('C', 'O', 'M', 'M')) {
        len = bytestream2_get_be32(&gb);
        if (len < 0 || bytestream2_get_bytes_left(&gb) < 18LL + len + (len&1)) {
            av_log(avctx, AV_LOG_ERROR, "no COMM chunk found\n");
            return AVERROR_INVALIDDATA;
        }
        bytestream2_skip(&gb, len + (len & 1));
    }
    len = bytestream2_get_be32(&gb);

    if (len < 18) {
        av_log(avctx, AV_LOG_ERROR, "COMM chunk was too short\n");
        return AVERROR_INVALIDDATA;
    }

    bytestream2_skip(&gb, 6);
    bps = bytestream2_get_be16(&gb);
    avctx->bits_per_coded_sample = bps;

    s->swap = tag == MKTAG('A', 'I', 'F', 'C');

    if (bps != 16 && bps != 8) {
        av_log(avctx, AV_LOG_ERROR, "unsupported number of bits per sample: %d\n", bps);
        return AVERROR(ENOSYS);
    }

    exp = bytestream2_get_be16(&gb) - 16383 - 63;
    val = bytestream2_get_be64(&gb);
    if (exp < -63 || exp > 63) {
        av_log(avctx, AV_LOG_ERROR, "exp %d is out of range\n", exp);
        return AVERROR_INVALIDDATA;
    }
    if (exp >= 0)
        avctx->sample_rate = val << exp;
    else
        avctx->sample_rate = (val + (1ULL<<(-exp-1))) >> -exp;
    len -= 18;
    if (len > 0)
        av_log(avctx, AV_LOG_INFO, "%d header bytes unparsed\n", len);

    return 0;
}
