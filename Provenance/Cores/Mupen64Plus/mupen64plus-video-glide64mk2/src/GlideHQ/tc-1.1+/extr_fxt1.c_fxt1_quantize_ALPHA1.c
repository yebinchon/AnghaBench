
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qword ;
typedef int dword ;
typedef int byte ;


 size_t ACOMP ;
 size_t BCOMP ;
 int CALCCDOT (int,int const,int const,float*,float,int*) ;
 size_t GCOMP ;
 int MAKEIVEC (int const,int const,float*,float,float*,float*) ;
 int MAX_COMP ;
 int N_TEXELS ;
 int Q_MOV32 (int ,int) ;
 int Q_OR32 (int ,int) ;
 int Q_SHL (int ,int) ;
 size_t RCOMP ;

__attribute__((used)) static void
fxt1_quantize_ALPHA1 (dword *cc,
        byte input[N_TEXELS][MAX_COMP])
{
    const int n_vect = 3;
    const int n_comp = 4;
    float vec[1 + 1 + 1][MAX_COMP];
    float b, iv[MAX_COMP];
    int i, j, k;
    qword hi;
    dword lohi, lolo;

    int minSum;
    int maxSum;
    int minColL = 0, maxColL = 0;
    int minColR = 0, maxColR = 0;
    int sumL = 0, sumR = 0;






    minSum = 2000;



    maxSum = -1;
    for (k = 0; k < N_TEXELS / 2; k++) {
 int sum = 0;

 for (i = 0; i < n_comp; i++) {
     sum += input[k][i];
 }



 if (minSum > sum) {
     minSum = sum;
     minColL = k;
 }
 if (maxSum < sum) {
     maxSum = sum;
     maxColL = k;
 }
 sumL += sum;
    }

    minSum = 2000;



    maxSum = -1;
    for (; k < N_TEXELS; k++) {
 int sum = 0;

 for (i = 0; i < n_comp; i++) {
     sum += input[k][i];
 }



 if (minSum > sum) {
     minSum = sum;
     minColR = k;
 }
 if (maxSum < sum) {
     maxSum = sum;
     maxColR = k;
 }
 sumR += sum;
    }


    {
 int j1, j2;
 int v1 = 0, v2 = 0;
 float err = 1e9;
 float tv[2 * 2][MAX_COMP];
 for (i = 0; i < n_comp; i++) {
     tv[0][i] = input[minColL][i];
     tv[1][i] = input[maxColL][i];
     tv[2][i] = input[minColR][i];
     tv[3][i] = input[maxColR][i];
 }
 for (j1 = 0; j1 < 2; j1++) {
     for (j2 = 2; j2 < 4; j2++) {
  float e = 0.0F;
  for (i = 0; i < n_comp; i++) {
      e += (tv[j1][i] - tv[j2][i]) * (tv[j1][i] - tv[j2][i]);
  }
  if (e < err) {
      err = e;
      v1 = j1;
      v2 = j2;
  }
     }
 }
 for (i = 0; i < n_comp; i++) {
     vec[0][i] = tv[1 - v1][i];
     vec[1][i] = (tv[v1][i] * sumL + tv[v2][i] * sumR) / (sumL + sumR);
     vec[2][i] = tv[5 - v2][i];
 }
    }


    cc[0] = 0;
    if (minColL != maxColL) {

 MAKEIVEC(n_vect, n_comp, iv, b, vec[0], vec[1]);


 lolo = 0;
 for (k = N_TEXELS / 2 - 1; k >= 0; k--) {
     int texel;

     CALCCDOT(texel, n_vect, n_comp, iv, b, input[k]);

     lolo <<= 2;
     lolo |= texel;
 }

 cc[0] = lolo;
    }


    cc[1] = 0;
    if (minColR != maxColR) {

 MAKEIVEC(n_vect, n_comp, iv, b, vec[2], vec[1]);


 lohi = 0;
 for (k = N_TEXELS - 1; k >= N_TEXELS / 2; k--) {
     int texel;

     CALCCDOT(texel, n_vect, n_comp, iv, b, input[k]);

     lohi <<= 2;
     lohi |= texel;
 }

 cc[1] = lohi;
    }

    Q_MOV32(hi, 7);
    for (j = n_vect - 1; j >= 0; j--) {

 Q_SHL(hi, 5);
 Q_OR32(hi, (dword)(vec[j][ACOMP] / 8.0F));
    }
    for (j = n_vect - 1; j >= 0; j--) {
 for (i = 0; i < n_comp - 1; i++) {

     Q_SHL(hi, 5);
     Q_OR32(hi, (dword)(vec[j][i] / 8.0F));
 }
    }
    ((qword *)cc)[1] = hi;
}
