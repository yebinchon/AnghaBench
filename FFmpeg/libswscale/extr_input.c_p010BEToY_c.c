
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;


 int AV_RB16 (int const*) ;
 int AV_WN16 (int *,int) ;

__attribute__((used)) static void p010BEToY_c(uint8_t *dst, const uint8_t *src, const uint8_t *unused1,
                        const uint8_t *unused2, int width, uint32_t *unused)
{
    int i;
    for (i = 0; i < width; i++) {
        AV_WN16(dst + i * 2, AV_RB16(src + i * 2) >> 6);
    }
}
