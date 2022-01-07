
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint64_t ;
typedef scalar_t__ int32_t ;


 int AV_WN64A (int *,int const) ;

__attribute__((used)) static inline void fill_64(uint8_t *dst, const uint64_t pix, int32_t n,
                           int32_t row_offset)
{
    for (; n > 0; dst += row_offset, n--)
        AV_WN64A(dst, pix);
}
