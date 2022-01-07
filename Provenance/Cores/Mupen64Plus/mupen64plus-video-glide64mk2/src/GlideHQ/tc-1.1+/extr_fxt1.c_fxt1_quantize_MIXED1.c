
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qword ;
typedef int dword ;
typedef int byte ;


 size_t BCOMP ;
 int CALCCDOT (int,int const,int const,float*,float,int*) ;
 size_t GCOMP ;
 int ISTBLACK (int*) ;
 int MAKEIVEC (int const,int const,float*,float,int*,int*) ;
 int MAX_COMP ;
 int N_TEXELS ;
 int Q_MOV32 (int ,int) ;
 int Q_OR32 (int ,int) ;
 int Q_SHL (int ,int) ;
 size_t RCOMP ;

__attribute__((used)) static void
fxt1_quantize_MIXED1 (dword *cc,
        byte input[N_TEXELS][MAX_COMP])
{
    const int n_vect = 2;
    const int n_comp = 3;
    byte vec[2 * 2][MAX_COMP];
    float b, iv[MAX_COMP];
    int i, j, k;
    qword hi;
    dword lohi, lolo;

    int minSum;
    int maxSum;
    int minColL = 0, maxColL = -1;
    int minColR = 0, maxColR = -1;






    minSum = 2000;



    maxSum = -1;
    for (k = 0; k < N_TEXELS / 2; k++) {
 if (!ISTBLACK(input[k])) {
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
 }
    }

    minSum = 2000;



    maxSum = -1;
    for (; k < N_TEXELS; k++) {
 if (!ISTBLACK(input[k])) {
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
 }
    }


    if (maxColL == -1) {

 cc[0] = 0xFFFFFFFF;
 for (i = 0; i < n_comp; i++) {
     vec[0][i] = 0;
     vec[1][i] = 0;
 }
    } else {
 cc[0] = 0;
 for (i = 0; i < n_comp; i++) {
     vec[0][i] = input[minColL][i];
     vec[1][i] = input[maxColL][i];
 }
 if (minColL != maxColL) {

     MAKEIVEC(n_vect, n_comp, iv, b, vec[0], vec[1]);


     lolo = 0;
     for (k = N_TEXELS / 2 - 1; k >= 0; k--) {
  int texel = n_vect + 1;
  if (!ISTBLACK(input[k])) {

      CALCCDOT(texel, n_vect, n_comp, iv, b, input[k]);
  }

  lolo <<= 2;
  lolo |= texel;
     }
     cc[0] = lolo;
 }
    }


    if (maxColR == -1) {

 cc[1] = 0xFFFFFFFF;
 for (i = 0; i < n_comp; i++) {
     vec[2][i] = 0;
     vec[3][i] = 0;
 }
    } else {
 cc[1] = 0;
 for (i = 0; i < n_comp; i++) {
     vec[2][i] = input[minColR][i];
     vec[3][i] = input[maxColR][i];
 }
 if (minColR != maxColR) {

     MAKEIVEC(n_vect, n_comp, iv, b, vec[2], vec[3]);


     lohi = 0;
     for (k = N_TEXELS - 1; k >= N_TEXELS / 2; k--) {
  int texel = n_vect + 1;
  if (!ISTBLACK(input[k])) {

      CALCCDOT(texel, n_vect, n_comp, iv, b, input[k]);
  }

  lohi <<= 2;
  lohi |= texel;
     }
     cc[1] = lohi;
 }
    }

    Q_MOV32(hi, 9 | (vec[3][GCOMP] & 4) | ((vec[1][GCOMP] >> 1) & 2));
    for (j = 2 * 2 - 1; j >= 0; j--) {
 for (i = 0; i < n_comp; i++) {

     Q_SHL(hi, 5);
     Q_OR32(hi, vec[j][i] >> 3);
 }
    }
    ((qword *)cc)[1] = hi;
}
