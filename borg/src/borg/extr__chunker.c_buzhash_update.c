
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const uint32_t ;


 int const BARREL_SHIFT (int const,int const) ;

__attribute__((used)) static uint32_t
buzhash_update(uint32_t sum, unsigned char remove, unsigned char add, size_t len, const uint32_t *h)
{
    uint32_t lenmod = len & 0x1f;
    return BARREL_SHIFT(sum, 1) ^ BARREL_SHIFT(h[remove], lenmod) ^ h[add];
}
