
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned long mirror (unsigned long x, int n) {
    unsigned long top = 1 << (n-1), bottom = 1;
    while (top > bottom) {
 unsigned long mask = top | bottom;
 unsigned long masked = x & mask;
 if (masked != 0 && masked != mask)
     x ^= mask;
 top >>= 1;
 bottom <<= 1;
    }
    return x;
}
