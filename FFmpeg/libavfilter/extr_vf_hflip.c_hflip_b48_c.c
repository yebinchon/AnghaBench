
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int64_t ;


 int AV_RB48 (int const*) ;
 int AV_WB48 (int *,int ) ;

__attribute__((used)) static void hflip_b48_c(const uint8_t *src, uint8_t *dst, int w)
{
    const uint8_t *in = src;
    uint8_t *out = dst;
    int j;

    for (j = 0; j < w; j++, out += 6, in -= 6) {
        int64_t v = AV_RB48(in);

        AV_WB48(out, v);
    }
}
