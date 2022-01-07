
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int input ;
typedef int dword ;
typedef int byte ;


 size_t ACOMP ;
 size_t BCOMP ;
 int CALCCDOT (int,int const,int const,float*,float,int*) ;
 int COLOR565 (int*) ;
 size_t GCOMP ;
 int MAKEIVEC (int const,int const,float*,float,int*,int*) ;
 int MAX_COMP ;
 int N_TEXELS ;
 size_t RCOMP ;
 int** dxtn_color_tlat ;
 int memset (int**,int,int) ;

__attribute__((used)) static void
dxt3_rgba_quantize (dword *cc, const byte *lines[], int comps)
{
    float b, iv[MAX_COMP];

    dword lolo, lohi;
    dword hihi;
    int color0, color1;
    const int n_vect = 3;
    const int n_comp = 3;


    int minSum = 2000;



    int maxSum = -1;
    int minCol = 0;
    int maxCol = 0;

    byte input[N_TEXELS][MAX_COMP];
    int i, k, l;

    if (comps == 3) {

 memset(input, -1, sizeof(input));
    }



    for (l = 0; l < 4; l++) {
 for (k = 0; k < 4; k++) {
     for (i = 0; i < comps; i++) {
  input[k + l * 4][i] = *lines[l]++;
     }
 }
    }
    for (k = 0; k < N_TEXELS; k++) {
 int sum = 0;

 for (i = 0; i < n_comp; i++) {
     sum += input[k][i];
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


    lolo = lohi = 0;
    for (k = N_TEXELS - 1; k >= N_TEXELS / 2; k--) {

 lohi <<= 4;
 lohi |= input[k][ACOMP] >> 4;
    }
    cc[1] = lohi;
    for (; k >= 0; k--) {

 lolo <<= 4;
 lolo |= input[k][ACOMP] >> 4;
    }
    cc[0] = lolo;

    color0 = COLOR565(input[minCol]);
    color1 = COLOR565(input[maxCol]);
    cc[2] = color0 | (color1 << 16);

    hihi = 0;
    if (color0 != color1) {
 MAKEIVEC(n_vect, n_comp, iv, b, input[minCol], input[maxCol]);


 for (k = N_TEXELS - 1; k >= 0; k--) {
     int texel;

     CALCCDOT(texel, n_vect, n_comp, iv, b, input[k]);
     texel = dxtn_color_tlat[0][texel];

     hihi <<= 2;
     hihi |= texel;
 }
    }
    cc[3] = hihi;
}
