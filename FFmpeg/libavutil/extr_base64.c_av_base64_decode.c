
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;


 int AVERROR_INVALIDDATA ;
 int AV_WN32 (char*,unsigned int) ;
 int BASE64_DEC_STEP (int) ;
 unsigned int av_be2ne32 (unsigned int) ;

int av_base64_decode(uint8_t *out, const char *in_str, int out_size)
{
    uint8_t *dst = out;
    uint8_t *end = out + out_size;

    const uint8_t *in = in_str;
    unsigned bits = 0xff;
    unsigned v;

    while (end - dst > 3) {
        BASE64_DEC_STEP(0);
        BASE64_DEC_STEP(1);
        BASE64_DEC_STEP(2);
        BASE64_DEC_STEP(3);

        v = av_be2ne32(v << 8);
        AV_WN32(dst, v);
        dst += 3;
        in += 4;
    }
    if (end - dst) {
        BASE64_DEC_STEP(0);
        BASE64_DEC_STEP(1);
        BASE64_DEC_STEP(2);
        BASE64_DEC_STEP(3);
        *dst++ = v >> 16;
        if (end - dst)
            *dst++ = v >> 8;
        if (end - dst)
            *dst++ = v;
        in += 4;
    }
    while (1) {
        BASE64_DEC_STEP(0);
        in++;
        BASE64_DEC_STEP(0);
        in++;
        BASE64_DEC_STEP(0);
        in++;
        BASE64_DEC_STEP(0);
        in++;
    }

out3:
    *dst++ = v >> 10;
    v <<= 2;
out2:
    *dst++ = v >> 4;
out1:
out0:
    return bits & 1 ? AVERROR_INVALIDDATA : dst - out;
}
