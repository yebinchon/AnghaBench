
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;


 int AV_RB16 (int const*) ;
 int memcpy (int *,int const*,int) ;

__attribute__((used)) static void samplecpy(uint8_t *dst, const uint8_t *src, int n, int maxval)
{
    if (maxval <= 255) {
        memcpy(dst, src, n);
    } else {
        int i;
        for (i=0; i<n/2; i++) {
            ((uint16_t *)dst)[i] = AV_RB16(src+2*i);
        }
    }
}
