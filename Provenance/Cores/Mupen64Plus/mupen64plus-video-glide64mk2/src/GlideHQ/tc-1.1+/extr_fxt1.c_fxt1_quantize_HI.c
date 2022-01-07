
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int dword ;
typedef int byte ;


 size_t BCOMP ;
 int CALCCDOT (int,int const,int const,float*,float,int*) ;
 size_t GCOMP ;
 int ISTBLACK (int*) ;
 int MAKEIVEC (int const,int const,float*,float,int*,int*) ;
 int MAX_COMP ;
 int N_TEXELS ;
 size_t RCOMP ;

__attribute__((used)) static void
fxt1_quantize_HI (dword *cc,
    byte input[N_TEXELS][MAX_COMP],
    byte reord[N_TEXELS][MAX_COMP], int n)
{
    const int n_vect = 6;
    const int n_comp = 3;
    float b = 0.0F;
    float iv[MAX_COMP];
    int i, k;
    dword hihi;


    int minSum = 2000;



    int maxSum = -1;
    int minCol = 0;
    int maxCol = 0;





    for (k = 0; k < n; k++) {
 int sum = 0;

 for (i = 0; i < n_comp; i++) {
     sum += reord[k][i];
 }



 if (minSum > sum) {
     minSum = sum;
     minCol = k;
 }
 if (maxSum < sum) {
     maxSum = sum;
     maxCol = k;
 }
    }

    hihi = 0;
    for (i = 0; i < n_comp; i++) {

 hihi <<= 5;
 hihi |= reord[maxCol][i] >> 3;
    }
    for (i = 0; i < n_comp; i++) {

 hihi <<= 5;
 hihi |= reord[minCol][i] >> 3;
    }
    cc[3] = hihi;
    cc[0] = cc[1] = cc[2] = 0;


    if (minCol != maxCol) {
 MAKEIVEC(n_vect, n_comp, iv, b, reord[minCol], reord[maxCol]);
    }


    for (k = N_TEXELS - 1; k >= 0; k--) {
 int t = k * 3;
 dword *kk = (dword *)((byte *)cc + t / 8);
 int texel = n_vect + 1;

 if (!ISTBLACK(input[k])) {
     if (minCol != maxCol) {

  CALCCDOT(texel, n_vect, n_comp, iv, b, input[k]);

  kk[0] |= texel << (t & 7);
     }
 } else {

     kk[0] |= texel << (t & 7);
 }
    }
}
