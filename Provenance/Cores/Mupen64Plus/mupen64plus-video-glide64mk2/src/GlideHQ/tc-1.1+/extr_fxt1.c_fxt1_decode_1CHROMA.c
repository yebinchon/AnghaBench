
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dword ;
typedef int byte ;


 size_t ACOMP ;
 size_t BCOMP ;
 size_t GCOMP ;
 size_t RCOMP ;
 int UP5 (int) ;

__attribute__((used)) static void
fxt1_decode_1CHROMA (const byte *code, int t, byte *rgba)
{
    const dword *cc;
    dword kk;

    cc = (const dword *)code;
    if (t & 16) {
 cc++;
 t &= 15;
    }
    t = (cc[0] >> (t * 2)) & 3;

    t *= 15;
    cc = (const dword *)(code + 8 + t / 8);
    kk = cc[0] >> (t & 7);
    rgba[BCOMP] = UP5(kk);
    rgba[GCOMP] = UP5(kk >> 5);
    rgba[RCOMP] = UP5(kk >> 10);
    rgba[ACOMP] = 255;
}
