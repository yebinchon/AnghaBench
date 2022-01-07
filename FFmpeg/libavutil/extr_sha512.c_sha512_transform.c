
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint64_t ;


 scalar_t__ Ch (scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__* K512 ;
 scalar_t__ Maj (scalar_t__,scalar_t__,scalar_t__) ;
 int R512_0 ;
 int R512_16 ;
 scalar_t__ Sigma0_512 (scalar_t__) ;
 scalar_t__ Sigma1_512 (scalar_t__) ;
 scalar_t__ blk (int) ;
 scalar_t__ blk0 (int) ;

__attribute__((used)) static void sha512_transform(uint64_t *state, const uint8_t buffer[128])
{
    uint64_t a, b, c, d, e, f, g, h;
    uint64_t block[80];
    uint64_t T1;
    int i;

    a = state[0];
    b = state[1];
    c = state[2];
    d = state[3];
    e = state[4];
    f = state[5];
    g = state[6];
    h = state[7];
    i = 0;
    ROUND512_0_TO_15(a, b, c, d, e, f, g, h); ROUND512_0_TO_15(h, a, b, c, d, e, f, g); ROUND512_0_TO_15(g, h, a, b, c, d, e, f); ROUND512_0_TO_15(f, g, h, a, b, c, d, e); ROUND512_0_TO_15(e, f, g, h, a, b, c, d); ROUND512_0_TO_15(d, e, f, g, h, a, b, c); ROUND512_0_TO_15(c, d, e, f, g, h, a, b); ROUND512_0_TO_15(b, c, d, e, f, g, h, a); ROUND512_0_TO_15(a, b, c, d, e, f, g, h); ROUND512_0_TO_15(h, a, b, c, d, e, f, g); ROUND512_0_TO_15(g, h, a, b, c, d, e, f); ROUND512_0_TO_15(f, g, h, a, b, c, d, e); ROUND512_0_TO_15(e, f, g, h, a, b, c, d); ROUND512_0_TO_15(d, e, f, g, h, a, b, c); ROUND512_0_TO_15(c, d, e, f, g, h, a, b); ROUND512_0_TO_15(b, c, d, e, f, g, h, a);
    ROUND512_16_TO_80(a, b, c, d, e, f, g, h); ROUND512_16_TO_80(h, a, b, c, d, e, f, g); ROUND512_16_TO_80(g, h, a, b, c, d, e, f); ROUND512_16_TO_80(f, g, h, a, b, c, d, e); ROUND512_16_TO_80(e, f, g, h, a, b, c, d); ROUND512_16_TO_80(d, e, f, g, h, a, b, c); ROUND512_16_TO_80(c, d, e, f, g, h, a, b); ROUND512_16_TO_80(b, c, d, e, f, g, h, a); ROUND512_16_TO_80(a, b, c, d, e, f, g, h); ROUND512_16_TO_80(h, a, b, c, d, e, f, g); ROUND512_16_TO_80(g, h, a, b, c, d, e, f); ROUND512_16_TO_80(f, g, h, a, b, c, d, e); ROUND512_16_TO_80(e, f, g, h, a, b, c, d); ROUND512_16_TO_80(d, e, f, g, h, a, b, c); ROUND512_16_TO_80(c, d, e, f, g, h, a, b); ROUND512_16_TO_80(b, c, d, e, f, g, h, a); ROUND512_16_TO_80(a, b, c, d, e, f, g, h); ROUND512_16_TO_80(h, a, b, c, d, e, f, g); ROUND512_16_TO_80(g, h, a, b, c, d, e, f); ROUND512_16_TO_80(f, g, h, a, b, c, d, e); ROUND512_16_TO_80(e, f, g, h, a, b, c, d); ROUND512_16_TO_80(d, e, f, g, h, a, b, c); ROUND512_16_TO_80(c, d, e, f, g, h, a, b); ROUND512_16_TO_80(b, c, d, e, f, g, h, a); ROUND512_16_TO_80(a, b, c, d, e, f, g, h); ROUND512_16_TO_80(h, a, b, c, d, e, f, g); ROUND512_16_TO_80(g, h, a, b, c, d, e, f); ROUND512_16_TO_80(f, g, h, a, b, c, d, e); ROUND512_16_TO_80(e, f, g, h, a, b, c, d); ROUND512_16_TO_80(d, e, f, g, h, a, b, c); ROUND512_16_TO_80(c, d, e, f, g, h, a, b); ROUND512_16_TO_80(b, c, d, e, f, g, h, a);
    ROUND512_16_TO_80(a, b, c, d, e, f, g, h); ROUND512_16_TO_80(h, a, b, c, d, e, f, g); ROUND512_16_TO_80(g, h, a, b, c, d, e, f); ROUND512_16_TO_80(f, g, h, a, b, c, d, e); ROUND512_16_TO_80(e, f, g, h, a, b, c, d); ROUND512_16_TO_80(d, e, f, g, h, a, b, c); ROUND512_16_TO_80(c, d, e, f, g, h, a, b); ROUND512_16_TO_80(b, c, d, e, f, g, h, a); ROUND512_16_TO_80(a, b, c, d, e, f, g, h); ROUND512_16_TO_80(h, a, b, c, d, e, f, g); ROUND512_16_TO_80(g, h, a, b, c, d, e, f); ROUND512_16_TO_80(f, g, h, a, b, c, d, e); ROUND512_16_TO_80(e, f, g, h, a, b, c, d); ROUND512_16_TO_80(d, e, f, g, h, a, b, c); ROUND512_16_TO_80(c, d, e, f, g, h, a, b); ROUND512_16_TO_80(b, c, d, e, f, g, h, a); ROUND512_16_TO_80(a, b, c, d, e, f, g, h); ROUND512_16_TO_80(h, a, b, c, d, e, f, g); ROUND512_16_TO_80(g, h, a, b, c, d, e, f); ROUND512_16_TO_80(f, g, h, a, b, c, d, e); ROUND512_16_TO_80(e, f, g, h, a, b, c, d); ROUND512_16_TO_80(d, e, f, g, h, a, b, c); ROUND512_16_TO_80(c, d, e, f, g, h, a, b); ROUND512_16_TO_80(b, c, d, e, f, g, h, a); ROUND512_16_TO_80(a, b, c, d, e, f, g, h); ROUND512_16_TO_80(h, a, b, c, d, e, f, g); ROUND512_16_TO_80(g, h, a, b, c, d, e, f); ROUND512_16_TO_80(f, g, h, a, b, c, d, e); ROUND512_16_TO_80(e, f, g, h, a, b, c, d); ROUND512_16_TO_80(d, e, f, g, h, a, b, c); ROUND512_16_TO_80(c, d, e, f, g, h, a, b); ROUND512_16_TO_80(b, c, d, e, f, g, h, a);

    state[0] += a;
    state[1] += b;
    state[2] += c;
    state[3] += d;
    state[4] += e;
    state[5] += f;
    state[6] += g;
    state[7] += h;
}
