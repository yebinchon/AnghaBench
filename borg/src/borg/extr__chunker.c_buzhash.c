
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int BARREL_SHIFT (int const,int) ;

__attribute__((used)) static uint32_t
buzhash(const unsigned char *data, size_t len, const uint32_t *h)
{
    uint32_t i;
    uint32_t sum = 0, imod;
    for(i = len - 1; i > 0; i--)
    {
        imod = i & 0x1f;
        sum ^= BARREL_SHIFT(h[*data], imod);
        data++;
    }
    return sum ^ h[*data];
}
