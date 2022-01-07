
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int16_t ;



__attribute__((used)) static void byte2word64(const uint8_t *t, const int pitch, float *p)
{
    int16_t *ps = (int16_t *)p;
    int y, x;

    for (y = 0; y < 4; y++)
        for (x = 0; x < 16; x++)
            ps[y * 16 + x] = t[y * pitch * 2 + x];
}
