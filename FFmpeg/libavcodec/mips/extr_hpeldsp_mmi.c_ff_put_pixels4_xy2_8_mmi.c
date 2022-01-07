
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int ptrdiff_t ;


 void* AV_RN32 (int const*) ;

void ff_put_pixels4_xy2_8_mmi(uint8_t *block, const uint8_t *pixels,
    ptrdiff_t line_size, int h)
{

    int i;
    const uint32_t a = AV_RN32(pixels);
    const uint32_t b = AV_RN32(pixels + 1);
    uint32_t l0 = (a & 0x03030303UL) +
                  (b & 0x03030303UL) +
                       0x02020202UL;
    uint32_t h0 = ((a & 0xFCFCFCFCUL) >> 2) +
                  ((b & 0xFCFCFCFCUL) >> 2);
    uint32_t l1, h1;

    pixels += line_size;
    for (i = 0; i < h; i += 2) {
        uint32_t a = AV_RN32(pixels);
        uint32_t b = AV_RN32(pixels + 1);
        l1 = (a & 0x03030303UL) +
             (b & 0x03030303UL);
        h1 = ((a & 0xFCFCFCFCUL) >> 2) +
             ((b & 0xFCFCFCFCUL) >> 2);
        *((uint32_t *) block) = h0 + h1 + (((l0 + l1) >> 2) & 0x0F0F0F0FUL);
        pixels += line_size;
        block += line_size;
        a = AV_RN32(pixels);
        b = AV_RN32(pixels + 1);
        l0 = (a & 0x03030303UL) +
             (b & 0x03030303UL) +
                  0x02020202UL;
        h0 = ((a & 0xFCFCFCFCUL) >> 2) +
             ((b & 0xFCFCFCFCUL) >> 2);
        *((uint32_t *) block) = h0 + h1 + (((l0 + l1) >> 2) & 0x0F0F0F0FUL);
        pixels += line_size;
        block += line_size;
    }
}
