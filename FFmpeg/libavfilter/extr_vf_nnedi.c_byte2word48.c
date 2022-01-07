
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int16_t ;



__attribute__((used)) static void byte2word48(const uint8_t *t, const int pitch, float *pf)
{
    int16_t *p = (int16_t *)pf;
    int y, x;

    for (y = 0; y < 4; y++)
        for (x = 0; x < 12; x++)
            p[y * 12 + x] = t[y * pitch * 2 + x];
}
