
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int uint32_t ;



void gfx_cpy_dsp_buf(uint32_t *buffer, uint32_t *image, int w, int h, uint32_t stride, bool blend)
{
    uint32_t *dest = buffer;
    uint32_t *src = image;
    for (uint32_t y = 0; y < h; y ++)
    {
        for (uint32_t x = 0; x < w; x ++)
        {
            uint32_t pos = y * stride / sizeof(uint32_t) + x;
            uint32_t pixel = *src;

            if (blend)
            {
                uint32_t dst = dest[pos];
                uint8_t src_a = ((pixel & 0xFF000000) >> 24);

                if (src_a > 0)
                    pixel &= 0x00FFFFFF;
                else
                    pixel = dst;
            }

            dest[pos] = pixel;

            src++;
        }
    }
}
