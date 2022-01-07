
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int int16_t ;


 int AV_RL16 (int const*) ;

__attribute__((used)) static void rgba64leToA_c(uint8_t *_dst, const uint8_t *_src, const uint8_t *unused1,
                          const uint8_t *unused2, int width, uint32_t *unused)
{
    int16_t *dst = (int16_t *)_dst;
    const uint16_t *src = (const uint16_t *)_src;
    int i;
    for (i = 0; i < width; i++)
        dst[i] = AV_RL16(src + 4 * i + 3);
}
