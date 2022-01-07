
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
 int LERP (int,int,int ,int ) ;
 size_t RCOMP ;
 int UP5 (int const) ;
 int ZERO_4UBV (int *) ;

__attribute__((used)) static void
fxt1_decode_1ALPHA (const byte *code, int t, byte *rgba)
{
    const dword *cc;

    cc = (const dword *)code;
    if (CC_SEL(cc, 124) & 1) {

 int col0[4];

 if (t & 16) {
     t &= 15;
     t = (cc[1] >> (t * 2)) & 3;

     col0[BCOMP] = (*(const dword *)(code + 11)) >> 6;
     col0[GCOMP] = CC_SEL(cc, 99);
     col0[RCOMP] = CC_SEL(cc, 104);
     col0[ACOMP] = CC_SEL(cc, 119);
 } else {
     t = (cc[0] >> (t * 2)) & 3;

     col0[BCOMP] = CC_SEL(cc, 64);
     col0[GCOMP] = CC_SEL(cc, 69);
     col0[RCOMP] = CC_SEL(cc, 74);
     col0[ACOMP] = CC_SEL(cc, 109);
 }

 if (t == 0) {
     rgba[BCOMP] = UP5(col0[BCOMP]);
     rgba[GCOMP] = UP5(col0[GCOMP]);
     rgba[RCOMP] = UP5(col0[RCOMP]);
     rgba[ACOMP] = UP5(col0[ACOMP]);
 } else if (t == 3) {
     rgba[BCOMP] = UP5(CC_SEL(cc, 79));
     rgba[GCOMP] = UP5(CC_SEL(cc, 84));
     rgba[RCOMP] = UP5(CC_SEL(cc, 89));
     rgba[ACOMP] = UP5(CC_SEL(cc, 114));
 } else {
     rgba[BCOMP] = LERP(3, t, UP5(col0[BCOMP]), UP5(CC_SEL(cc, 79)));
     rgba[GCOMP] = LERP(3, t, UP5(col0[GCOMP]), UP5(CC_SEL(cc, 84)));
     rgba[RCOMP] = LERP(3, t, UP5(col0[RCOMP]), UP5(CC_SEL(cc, 89)));
     rgba[ACOMP] = LERP(3, t, UP5(col0[ACOMP]), UP5(CC_SEL(cc, 114)));
 }
    } else {


 if (t & 16) {
     cc++;
     t &= 15;
 }
 t = (cc[0] >> (t * 2)) & 3;

 if (t == 3) {
     ZERO_4UBV(rgba);
 } else {
     dword kk;
     cc = (const dword *)code;
     rgba[ACOMP] = UP5(cc[3] >> (t * 5 + 13));
     t *= 15;
     cc = (const dword *)(code + 8 + t / 8);
     kk = cc[0] >> (t & 7);
     rgba[BCOMP] = UP5(kk);
     rgba[GCOMP] = UP5(kk >> 5);
     rgba[RCOMP] = UP5(kk >> 10);
 }
    }
}
