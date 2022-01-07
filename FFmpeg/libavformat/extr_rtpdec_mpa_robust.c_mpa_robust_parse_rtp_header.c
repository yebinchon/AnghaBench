
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int AVFormatContext ;


 int AVERROR_INVALIDDATA ;
 int AV_LOG_ERROR ;
 int AV_RB16 (int const*) ;
 int av_log (int *,int ,char*,int) ;

__attribute__((used)) static int mpa_robust_parse_rtp_header(AVFormatContext *ctx,
                                       const uint8_t *buf, int len,
                                       unsigned *adu_size, unsigned *cont)
{
    unsigned header_size;

    if (len < 2) {
        av_log(ctx, AV_LOG_ERROR, "Invalid %d bytes packet\n", len);
        return AVERROR_INVALIDDATA;
    }

    *cont = !!(buf[0] & 0x80);
    if (!(buf[0] & 0x40)) {
        header_size = 1;
        *adu_size = buf[0] & ~0xc0;
    } else {
        header_size = 2;
        *adu_size = AV_RB16(buf) & ~0xc000;
    }

    return header_size;
}
