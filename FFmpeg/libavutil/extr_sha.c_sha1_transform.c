
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef unsigned int uint32_t ;


 int AV_RB32 (int const*) ;
 int R0 (unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,int) ;
 int R1 (unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,int) ;
 int R1_0 ;
 int R1_20 ;
 int R1_40 ;
 int R1_60 ;
 unsigned int rol (unsigned int,int) ;

__attribute__((used)) static void sha1_transform(uint32_t state[5], const uint8_t buffer[64])
{
    uint32_t block[80];
    unsigned int i, a, b, c, d, e;

    a = state[0];
    b = state[1];
    c = state[2];
    d = state[3];
    e = state[4];
    i = 0;
    R0(a, b, c, d, e, 0 + i); R0(e, a, b, c, d, 1 + i); R0(d, e, a, b, c, 2 + i); R0(c, d, e, a, b, 3 + i); R0(b, c, d, e, a, 4 + i); i += 5; R0(a, b, c, d, e, 0 + i); R0(e, a, b, c, d, 1 + i); R0(d, e, a, b, c, 2 + i); R0(c, d, e, a, b, 3 + i); R0(b, c, d, e, a, 4 + i); i += 5; R0(a, b, c, d, e, 0 + i); R0(e, a, b, c, d, 1 + i); R0(d, e, a, b, c, 2 + i); R0(c, d, e, a, b, 3 + i); R0(b, c, d, e, a, 4 + i); i += 5;
    R0(a, b, c, d, e, 15);
    R1(e, a, b, c, d, 16);
    R1(d, e, a, b, c, 17);
    R1(c, d, e, a, b, 18);
    R1(b, c, d, e, a, 19);
    i = 20;
    R2(a, b, c, d, e, 0 + i); R2(e, a, b, c, d, 1 + i); R2(d, e, a, b, c, 2 + i); R2(c, d, e, a, b, 3 + i); R2(b, c, d, e, a, 4 + i); i += 5; R2(a, b, c, d, e, 0 + i); R2(e, a, b, c, d, 1 + i); R2(d, e, a, b, c, 2 + i); R2(c, d, e, a, b, 3 + i); R2(b, c, d, e, a, 4 + i); i += 5; R2(a, b, c, d, e, 0 + i); R2(e, a, b, c, d, 1 + i); R2(d, e, a, b, c, 2 + i); R2(c, d, e, a, b, 3 + i); R2(b, c, d, e, a, 4 + i); i += 5; R2(a, b, c, d, e, 0 + i); R2(e, a, b, c, d, 1 + i); R2(d, e, a, b, c, 2 + i); R2(c, d, e, a, b, 3 + i); R2(b, c, d, e, a, 4 + i); i += 5;
    R3(a, b, c, d, e, 0 + i); R3(e, a, b, c, d, 1 + i); R3(d, e, a, b, c, 2 + i); R3(c, d, e, a, b, 3 + i); R3(b, c, d, e, a, 4 + i); i += 5; R3(a, b, c, d, e, 0 + i); R3(e, a, b, c, d, 1 + i); R3(d, e, a, b, c, 2 + i); R3(c, d, e, a, b, 3 + i); R3(b, c, d, e, a, 4 + i); i += 5; R3(a, b, c, d, e, 0 + i); R3(e, a, b, c, d, 1 + i); R3(d, e, a, b, c, 2 + i); R3(c, d, e, a, b, 3 + i); R3(b, c, d, e, a, 4 + i); i += 5; R3(a, b, c, d, e, 0 + i); R3(e, a, b, c, d, 1 + i); R3(d, e, a, b, c, 2 + i); R3(c, d, e, a, b, 3 + i); R3(b, c, d, e, a, 4 + i); i += 5;
    R4(a, b, c, d, e, 0 + i); R4(e, a, b, c, d, 1 + i); R4(d, e, a, b, c, 2 + i); R4(c, d, e, a, b, 3 + i); R4(b, c, d, e, a, 4 + i); i += 5; R4(a, b, c, d, e, 0 + i); R4(e, a, b, c, d, 1 + i); R4(d, e, a, b, c, 2 + i); R4(c, d, e, a, b, 3 + i); R4(b, c, d, e, a, 4 + i); i += 5; R4(a, b, c, d, e, 0 + i); R4(e, a, b, c, d, 1 + i); R4(d, e, a, b, c, 2 + i); R4(c, d, e, a, b, 3 + i); R4(b, c, d, e, a, 4 + i); i += 5; R4(a, b, c, d, e, 0 + i); R4(e, a, b, c, d, 1 + i); R4(d, e, a, b, c, 2 + i); R4(c, d, e, a, b, 3 + i); R4(b, c, d, e, a, 4 + i); i += 5;

    state[0] += a;
    state[1] += b;
    state[2] += c;
    state[3] += d;
    state[4] += e;
}
