
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* idct_permutation; } ;
struct MpegEncContext {int * chroma_inter_matrix; int * chroma_intra_matrix; int * inter_matrix; int * intra_matrix; TYPE_1__ idsp; } ;
struct TYPE_5__ {int* bNewQmatrix; int ** Qmatrix; } ;
typedef TYPE_2__ DXVA_QmatrixData ;
typedef int AVDXVAContext ;
typedef int AVCodecContext ;


 size_t* ff_zigzag_direct ;

__attribute__((used)) static void fill_quantization_matrices(AVCodecContext *avctx,
                                       AVDXVAContext *ctx,
                                       const struct MpegEncContext *s,
                                       DXVA_QmatrixData *qm)
{
    int i;
    for (i = 0; i < 4; i++)
        qm->bNewQmatrix[i] = 1;
    for (i = 0; i < 64; i++) {
        int n = s->idsp.idct_permutation[ff_zigzag_direct[i]];
        qm->Qmatrix[0][i] = s->intra_matrix[n];
        qm->Qmatrix[1][i] = s->inter_matrix[n];
        qm->Qmatrix[2][i] = s->chroma_intra_matrix[n];
        qm->Qmatrix[3][i] = s->chroma_inter_matrix[n];
    }
}
