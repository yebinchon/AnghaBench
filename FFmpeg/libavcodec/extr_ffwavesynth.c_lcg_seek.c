
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;


 int LCG_A ;
 int LCG_C ;

__attribute__((used)) static void lcg_seek(uint32_t *s, uint32_t dt)
{
    uint32_t a, c, t = *s;

    a = LCG_A;
    c = LCG_C;
    while (dt) {
        if (dt & 1)
            t = a * t + c;
        c *= a + 1;
        a *= a;
        dt >>= 1;
    }
    *s = t;
}
