
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int8_t ;
typedef int AVCRC ;


 int av_crc (int const*,int,int const*,size_t) ;

uint8_t ff_sbc_crc8(const AVCRC *ctx, const uint8_t *data, size_t len)
{
    size_t byte_length = len >> 3;
    int bit_length = len & 7;
    uint8_t crc;

    crc = av_crc(ctx, 0x0F, data, byte_length);

    if (bit_length) {
        uint8_t bits = data[byte_length];
        while (bit_length--) {
            int8_t mask = bits ^ crc;
            crc = (crc << 1) ^ ((mask >> 7) & 0x1D);
            bits <<= 1;
        }
    }

    return crc;
}
