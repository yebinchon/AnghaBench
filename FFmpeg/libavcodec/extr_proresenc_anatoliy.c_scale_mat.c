
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;



__attribute__((used)) static void scale_mat(const uint8_t* src, int* dst, int scale)
{
    int i;
    for (i = 0; i < 64; i++)
        dst[i] = src[i] * scale;
}
