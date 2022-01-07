
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* lsp; } ;
struct TYPE_5__ {size_t bitrate; float* lspf; TYPE_1__ frame; } ;
typedef TYPE_2__ EVRCContext ;


 int FILTER_ORDER ;
 scalar_t__ MIN_LSP_SEP ;
 float*** evrc_lspq_codebooks ;
 int** evrc_lspq_codebooks_row_sizes ;
 int* evrc_lspq_nb_codebooks ;

__attribute__((used)) static int decode_lspf(EVRCContext *e)
{
    const float * const *codebooks = evrc_lspq_codebooks[e->bitrate];
    int i, j, k = 0;

    for (i = 0; i < evrc_lspq_nb_codebooks[e->bitrate]; i++) {
        int row_size = evrc_lspq_codebooks_row_sizes[e->bitrate][i];
        const float *codebook = codebooks[i];

        for (j = 0; j < row_size; j++)
            e->lspf[k++] = codebook[e->frame.lsp[i] * row_size + j];
    }


    for (i = 1; i < FILTER_ORDER; i++)
        if (e->lspf[i] <= e->lspf[i - 1])
            return -1;


    for (i = 0, k = 0; i < evrc_lspq_nb_codebooks[e->bitrate] - 1; i++) {
        k += evrc_lspq_codebooks_row_sizes[e->bitrate][i];
        if (e->lspf[k] - e->lspf[k - 1] <= MIN_LSP_SEP)
            return -1;
    }

    return 0;
}
