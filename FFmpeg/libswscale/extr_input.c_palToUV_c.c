
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef int uint32_t ;
typedef size_t uint16_t ;
typedef size_t int16_t ;


 int av_assert1 (int) ;

__attribute__((used)) static void palToUV_c(uint8_t *_dstU, uint8_t *_dstV,
                           const uint8_t *unused0, const uint8_t *src1, const uint8_t *src2,
                      int width, uint32_t *pal)
{
    uint16_t *dstU = (uint16_t *)_dstU;
    int16_t *dstV = (int16_t *)_dstV;
    int i;
    av_assert1(src1 == src2);
    for (i = 0; i < width; i++) {
        int p = pal[src1[i]];

        dstU[i] = (uint8_t)(p>> 8)<<6;
        dstV[i] = (uint8_t)(p>>16)<<6;
    }
}
