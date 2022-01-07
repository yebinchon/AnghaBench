
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char uint8_t ;
typedef int GetByteContext ;


 int AVERROR_INVALIDDATA ;
 int bytestream2_get_buffer (int *,unsigned char*,unsigned int) ;
 unsigned char bytestream2_get_byte (int *) ;
 int bytestream2_get_bytes_left (int *) ;

__attribute__((used)) static int pcx_rle_decode(GetByteContext *gb,
                           uint8_t *dst,
                           unsigned int bytes_per_scanline,
                           int compressed)
{
    unsigned int i = 0;
    unsigned char run, value;

    if (bytestream2_get_bytes_left(gb) < 1)
        return AVERROR_INVALIDDATA;

    if (compressed) {
        while (i < bytes_per_scanline && bytestream2_get_bytes_left(gb)>0) {
            run = 1;
            value = bytestream2_get_byte(gb);
            if (value >= 0xc0 && bytestream2_get_bytes_left(gb)>0) {
                run = value & 0x3f;
                value = bytestream2_get_byte(gb);
            }
            while (i < bytes_per_scanline && run--)
                dst[i++] = value;
        }
    } else {
        bytestream2_get_buffer(gb, dst, bytes_per_scanline);
    }
    return 0;
}
