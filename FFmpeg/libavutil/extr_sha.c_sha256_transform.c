
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef unsigned int uint32_t ;


 scalar_t__ Ch (unsigned int,unsigned int,unsigned int) ;
 scalar_t__* K256 ;
 unsigned int Maj (unsigned int,unsigned int,unsigned int) ;
 int R256_0 ;
 int R256_16 ;
 unsigned int Sigma0_256 (unsigned int) ;
 scalar_t__ Sigma1_256 (unsigned int) ;
 unsigned int blk (unsigned int) ;
 unsigned int blk0 (unsigned int) ;

__attribute__((used)) static void sha256_transform(uint32_t *state, const uint8_t buffer[64])
{
    unsigned int i, a, b, c, d, e, f, g, h;
    uint32_t block[64];
    uint32_t T1;

    a = state[0];
    b = state[1];
    c = state[2];
    d = state[3];
    e = state[4];
    f = state[5];
    g = state[6];
    h = state[7];
    i = 0;
    ROUND256_0_TO_15(a, b, c, d, e, f, g, h); ROUND256_0_TO_15(h, a, b, c, d, e, f, g); ROUND256_0_TO_15(g, h, a, b, c, d, e, f); ROUND256_0_TO_15(f, g, h, a, b, c, d, e); ROUND256_0_TO_15(e, f, g, h, a, b, c, d); ROUND256_0_TO_15(d, e, f, g, h, a, b, c); ROUND256_0_TO_15(c, d, e, f, g, h, a, b); ROUND256_0_TO_15(b, c, d, e, f, g, h, a); ROUND256_0_TO_15(a, b, c, d, e, f, g, h); ROUND256_0_TO_15(h, a, b, c, d, e, f, g); ROUND256_0_TO_15(g, h, a, b, c, d, e, f); ROUND256_0_TO_15(f, g, h, a, b, c, d, e); ROUND256_0_TO_15(e, f, g, h, a, b, c, d); ROUND256_0_TO_15(d, e, f, g, h, a, b, c); ROUND256_0_TO_15(c, d, e, f, g, h, a, b); ROUND256_0_TO_15(b, c, d, e, f, g, h, a);
    ROUND256_16_TO_63(a, b, c, d, e, f, g, h); ROUND256_16_TO_63(h, a, b, c, d, e, f, g); ROUND256_16_TO_63(g, h, a, b, c, d, e, f); ROUND256_16_TO_63(f, g, h, a, b, c, d, e); ROUND256_16_TO_63(e, f, g, h, a, b, c, d); ROUND256_16_TO_63(d, e, f, g, h, a, b, c); ROUND256_16_TO_63(c, d, e, f, g, h, a, b); ROUND256_16_TO_63(b, c, d, e, f, g, h, a); ROUND256_16_TO_63(a, b, c, d, e, f, g, h); ROUND256_16_TO_63(h, a, b, c, d, e, f, g); ROUND256_16_TO_63(g, h, a, b, c, d, e, f); ROUND256_16_TO_63(f, g, h, a, b, c, d, e); ROUND256_16_TO_63(e, f, g, h, a, b, c, d); ROUND256_16_TO_63(d, e, f, g, h, a, b, c); ROUND256_16_TO_63(c, d, e, f, g, h, a, b); ROUND256_16_TO_63(b, c, d, e, f, g, h, a); ROUND256_16_TO_63(a, b, c, d, e, f, g, h); ROUND256_16_TO_63(h, a, b, c, d, e, f, g); ROUND256_16_TO_63(g, h, a, b, c, d, e, f); ROUND256_16_TO_63(f, g, h, a, b, c, d, e); ROUND256_16_TO_63(e, f, g, h, a, b, c, d); ROUND256_16_TO_63(d, e, f, g, h, a, b, c); ROUND256_16_TO_63(c, d, e, f, g, h, a, b); ROUND256_16_TO_63(b, c, d, e, f, g, h, a);
    ROUND256_16_TO_63(a, b, c, d, e, f, g, h); ROUND256_16_TO_63(h, a, b, c, d, e, f, g); ROUND256_16_TO_63(g, h, a, b, c, d, e, f); ROUND256_16_TO_63(f, g, h, a, b, c, d, e); ROUND256_16_TO_63(e, f, g, h, a, b, c, d); ROUND256_16_TO_63(d, e, f, g, h, a, b, c); ROUND256_16_TO_63(c, d, e, f, g, h, a, b); ROUND256_16_TO_63(b, c, d, e, f, g, h, a); ROUND256_16_TO_63(a, b, c, d, e, f, g, h); ROUND256_16_TO_63(h, a, b, c, d, e, f, g); ROUND256_16_TO_63(g, h, a, b, c, d, e, f); ROUND256_16_TO_63(f, g, h, a, b, c, d, e); ROUND256_16_TO_63(e, f, g, h, a, b, c, d); ROUND256_16_TO_63(d, e, f, g, h, a, b, c); ROUND256_16_TO_63(c, d, e, f, g, h, a, b); ROUND256_16_TO_63(b, c, d, e, f, g, h, a); ROUND256_16_TO_63(a, b, c, d, e, f, g, h); ROUND256_16_TO_63(h, a, b, c, d, e, f, g); ROUND256_16_TO_63(g, h, a, b, c, d, e, f); ROUND256_16_TO_63(f, g, h, a, b, c, d, e); ROUND256_16_TO_63(e, f, g, h, a, b, c, d); ROUND256_16_TO_63(d, e, f, g, h, a, b, c); ROUND256_16_TO_63(c, d, e, f, g, h, a, b); ROUND256_16_TO_63(b, c, d, e, f, g, h, a);

    state[0] += a;
    state[1] += b;
    state[2] += c;
    state[3] += d;
    state[4] += e;
    state[5] += f;
    state[6] += g;
    state[7] += h;
}
