
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef long long uint32_t ;
typedef int int32_t ;
typedef int AVCRC ;


 int AVERROR (int ) ;
 int EINVAL ;
 int av_bswap32 (long long) ;

int av_crc_init(AVCRC *ctx, int le, int bits, uint32_t poly, int ctx_size)
{
    unsigned i, j;
    uint32_t c;

    if (bits < 8 || bits > 32 || poly >= (1LL << bits))
        return AVERROR(EINVAL);
    if (ctx_size != sizeof(AVCRC) * 257 && ctx_size != sizeof(AVCRC) * 1024)
        return AVERROR(EINVAL);

    for (i = 0; i < 256; i++) {
        if (le) {
            for (c = i, j = 0; j < 8; j++)
                c = (c >> 1) ^ (poly & (-(c & 1)));
            ctx[i] = c;
        } else {
            for (c = i << 24, j = 0; j < 8; j++)
                c = (c << 1) ^ ((poly << (32 - bits)) & (((int32_t) c) >> 31));
            ctx[i] = av_bswap32(c);
        }
    }
    ctx[256] = 1;

    if (ctx_size >= sizeof(AVCRC) * 1024)
        for (i = 0; i < 256; i++)
            for (j = 0; j < 3; j++)
                ctx[256 * (j + 1) + i] =
                    (ctx[256 * j + i] >> 8) ^ ctx[ctx[256 * j + i] & 0xFF];


    return 0;
}
