
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qword ;
typedef int dword ;
typedef int byte ;


 size_t ACOMP ;
 int MAX_COMP ;
 int MAX_VECT ;
 int N_TEXELS ;
 int Q_MOV32 (int ,int) ;
 int Q_OR32 (int ,int) ;
 int Q_SHL (int ,int) ;
 int fxt1_bestcol (float**,int const,int *,int const) ;
 scalar_t__ fxt1_choose (float**,int const,int **,int const,int) ;
 int fxt1_lloyd (float**,int const,int **,int const,int) ;

__attribute__((used)) static void
fxt1_quantize_ALPHA0 (dword *cc,
        byte input[N_TEXELS][MAX_COMP],
        byte reord[N_TEXELS][MAX_COMP], int n)
{
    const int n_vect = 3;
    const int n_comp = 4;
    float vec[MAX_VECT][MAX_COMP];
    int i, j, k;
    qword hi;
    dword lohi, lolo;


    for (i = 0; i < n_comp; i++) {
 vec[n_vect][i] = 0;
    }


    if (fxt1_choose(vec, n_vect, reord, n_comp, n) != 0) {
 fxt1_lloyd(vec, n_vect, reord, n_comp, n);
    }

    Q_MOV32(hi, 6);
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

    lohi = lolo = 0;

    for (k = N_TEXELS - 1; k >= N_TEXELS / 2; k--) {
 lohi <<= 2;
 lohi |= fxt1_bestcol(vec, n_vect + 1, input[k], n_comp);
    }

    for (; k >= 0; k--) {
 lolo <<= 2;
 lolo |= fxt1_bestcol(vec, n_vect + 1, input[k], n_comp);
    }
    cc[1] = lohi;
    cc[0] = lolo;
}
