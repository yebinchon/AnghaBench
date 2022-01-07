
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef unsigned int uint32_t ;



__attribute__((used)) static void byte4_read(const uint8_t *src, uint32_t *dst)
{
    int i;

    for (i = 0; i < 120; i += 4) {
        unsigned sample;

        sample = ((unsigned)src[i + 0] << 25) | ((unsigned)src[i + 1] << 18) | ((unsigned)src[i + 2] << 11) | ((unsigned)src[i + 3] << 4);
        dst[i / 4] = sample;
    }
}
