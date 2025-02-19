
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dword ;
typedef int byte ;


 size_t ACOMP ;
 size_t BCOMP ;
 int CC_SEL (int const*,int) ;
 size_t GCOMP ;
 int LERP (int,int,int,int) ;
 size_t RCOMP ;
 int UP5 (int ) ;
 int ZERO_4UBV (int*) ;

__attribute__((used)) static void
fxt1_decode_1HI (const byte *code, int t, byte *rgba)
{
    const dword *cc;

    t *= 3;
    cc = (const dword *)(code + t / 8);
    t = (cc[0] >> (t & 7)) & 7;

    if (t == 7) {
 ZERO_4UBV(rgba);
    } else {
 cc = (const dword *)(code + 12);
 if (t == 0) {
     rgba[BCOMP] = UP5(CC_SEL(cc, 0));
     rgba[GCOMP] = UP5(CC_SEL(cc, 5));
     rgba[RCOMP] = UP5(CC_SEL(cc, 10));
 } else if (t == 6) {
     rgba[BCOMP] = UP5(CC_SEL(cc, 15));
     rgba[GCOMP] = UP5(CC_SEL(cc, 20));
     rgba[RCOMP] = UP5(CC_SEL(cc, 25));
 } else {
     rgba[BCOMP] = LERP(6, t, UP5(CC_SEL(cc, 0)), UP5(CC_SEL(cc, 15)));
     rgba[GCOMP] = LERP(6, t, UP5(CC_SEL(cc, 5)), UP5(CC_SEL(cc, 20)));
     rgba[RCOMP] = LERP(6, t, UP5(CC_SEL(cc, 10)), UP5(CC_SEL(cc, 25)));
 }
 rgba[ACOMP] = 255;
    }
}
