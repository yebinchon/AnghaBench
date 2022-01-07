
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;



__attribute__((used)) static void hflip_dword_c(const uint8_t *ssrc, uint8_t *ddst, int w)
{
    const uint32_t *src = (const uint32_t *)ssrc;
    uint32_t *dst = (uint32_t *)ddst;
    int j;

    for (j = 0; j < w; j++)
        dst[j] = src[-j];
}
