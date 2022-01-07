
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;



__attribute__((used)) static void permute(uint8_t *dst, const uint8_t *src, const uint8_t permutation[64])
{
    int i;
    for (i = 0; i < 64; i++)
        dst[i] = permutation[src[i]];
}
