
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef unsigned int uint32_t ;



__attribute__((used)) static void byte3_read(const uint8_t *src, uint32_t *dst)
{
    int i;

    for (i = 0; i < 120; i += 3) {
        unsigned sample;

        sample = ((unsigned)src[i + 0] << 25) | ((unsigned)src[i + 1] << 18) | ((unsigned)src[i + 2] << 11);
        dst[i / 3] = sample;
    }
}
