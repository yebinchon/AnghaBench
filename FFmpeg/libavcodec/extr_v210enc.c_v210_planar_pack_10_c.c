
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
typedef int uint16_t ;
typedef int ptrdiff_t ;


 int WRITE_PIXELS (int const*,int const*,int const*,int) ;

__attribute__((used)) static void v210_planar_pack_10_c(const uint16_t *y, const uint16_t *u,
                                  const uint16_t *v, uint8_t *dst,
                                  ptrdiff_t width)
{
    uint32_t val;
    int i;

    for (i = 0; i < width - 5; i += 6) {
        WRITE_PIXELS(u, y, v, 10);
        WRITE_PIXELS(y, u, y, 10);
        WRITE_PIXELS(v, y, u, 10);
        WRITE_PIXELS(y, v, y, 10);
    }
}
