
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qword ;
typedef int dword ;
typedef int byte ;


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
fxt1_quantize_CHROMA (dword *cc,
        byte input[N_TEXELS][MAX_COMP])
{
    const int n_vect = 4;
    const int n_comp = 3;
    float vec[MAX_VECT][MAX_COMP];
    int i, j, k;
    qword hi;
    dword lohi, lolo;

    if (fxt1_choose(vec, n_vect, input, n_comp, N_TEXELS) != 0) {
 fxt1_lloyd(vec, n_vect, input, n_comp, N_TEXELS);
    }

    Q_MOV32(hi, 4);
    for (j = n_vect - 1; j >= 0; j--) {
 for (i = 0; i < n_comp; i++) {

     Q_SHL(hi, 5);
     Q_OR32(hi, (dword)(vec[j][i] / 8.0F));
 }
    }
    ((qword *)cc)[1] = hi;

    lohi = lolo = 0;

    for (k = N_TEXELS - 1; k >= N_TEXELS / 2; k--) {
 lohi <<= 2;
 lohi |= fxt1_bestcol(vec, n_vect, input[k], n_comp);
    }

    for (; k >= 0; k--) {
 lolo <<= 2;
 lolo |= fxt1_bestcol(vec, n_vect, input[k], n_comp);
    }
    cc[1] = lohi;
    cc[0] = lolo;
}
