
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qword ;
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
 int Q_MOV32 (int ,int ) ;
 int Q_OR32 (int ,int) ;
 int Q_SHL (int ,int) ;
 size_t RCOMP ;
 int** dxtn_alpha_tlat ;
 int** dxtn_color_tlat ;
 int memset (int**,int,int) ;

__attribute__((used)) static void
dxt5_rgba_quantize (dword *cc, const byte *lines[], int comps)
{
    float b, iv[MAX_COMP];

    qword lo;
    dword hihi;
    int color0, color1;
    const int n_vect = 3;
    const int n_comp = 3;


    int minSum = 2000;



    int maxSum = -1;
    int minCol = 0;
    int maxCol = 0;
    int alpha0 = 2000;
    int alpha1 = -1;
    int anyZero = 0, anyOne = 0;
    int a_vect;

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
 if (alpha0 > input[k][ACOMP]) {
     alpha0 = input[k][ACOMP];
 }
 if (alpha1 < input[k][ACOMP]) {
     alpha1 = input[k][ACOMP];
 }
 if (input[k][ACOMP] == 0) {
     anyZero = 1;
 }
 if (input[k][ACOMP] == 255) {
     anyOne = 1;
 }
    }


    if (alpha0 == alpha1) {

 cc[0] = alpha0 | (alpha1 << 8);
 cc[1] = 0;
    } else {
 if (anyZero && ((alpha0 == 0) || (alpha1 == 0))) {

     anyZero = 0;
 }
 if (anyOne && ((alpha0 == 255) || (alpha1 == 255))) {

     anyOne = 0;
 }
 if ((anyZero | anyOne) ^ (alpha0 <= alpha1)) {
     int aux;
     aux = alpha0;
     alpha0 = alpha1;
     alpha1 = aux;
 }
 a_vect = (alpha0 <= alpha1) ? 5 : 7;


 iv[ACOMP] = (float)a_vect / (alpha1 - alpha0);
 b = -iv[ACOMP] * alpha0 + 0.5F;


 Q_MOV32(lo, 0);
 for (k = N_TEXELS - 1; k >= 0; k--) {
     int texel = -1;
     if (anyZero | anyOne) {
  if (input[k][ACOMP] == 0) {
      texel = 6;
  } else if (input[k][ACOMP] == 255) {
      texel = 7;
  }
     }

     if (texel == -1) {
  float dot = input[k][ACOMP] * iv[ACOMP];
  texel = (int)(dot + b);







  texel = dxtn_alpha_tlat[anyZero | anyOne][texel];
     }

     Q_SHL(lo, 3);
     Q_OR32(lo, texel);
 }
 Q_SHL(lo, 16);
 Q_OR32(lo, alpha0 | (alpha1 << 8));
 ((qword *)cc)[0] = lo;
    }

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
