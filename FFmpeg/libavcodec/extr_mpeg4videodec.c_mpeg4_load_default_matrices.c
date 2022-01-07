
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* idct_permutation; } ;
struct TYPE_5__ {int* intra_matrix; int* chroma_intra_matrix; int* inter_matrix; int* chroma_inter_matrix; TYPE_1__ idsp; } ;
typedef TYPE_2__ MpegEncContext ;


 int* ff_mpeg4_default_intra_matrix ;
 int* ff_mpeg4_default_non_intra_matrix ;

__attribute__((used)) static void mpeg4_load_default_matrices(MpegEncContext *s)
{
    int i, v;


    for (i = 0; i < 64; i++) {
        int j = s->idsp.idct_permutation[i];
        v = ff_mpeg4_default_intra_matrix[i];
        s->intra_matrix[j] = v;
        s->chroma_intra_matrix[j] = v;

        v = ff_mpeg4_default_non_intra_matrix[i];
        s->inter_matrix[j] = v;
        s->chroma_inter_matrix[j] = v;
    }
}
