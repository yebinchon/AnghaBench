
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;



__attribute__((used)) static void hflip_qword_c(const uint8_t *ssrc, uint8_t *ddst, int w)
{
    const uint64_t *src = (const uint64_t *)ssrc;
    uint64_t *dst = (uint64_t *)ddst;
    int j;

    for (j = 0; j < w; j++)
        dst[j] = src[-j];
}
