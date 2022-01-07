
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int block_len; int * max_exponent; int * exponents; int gb; } ;
typedef TYPE_1__ WMACodecContext ;


 int NB_LSP_COEFS ;
 float** ff_wma_lsp_codebook ;
 int get_bits (int *,int) ;
 int wma_lsp_to_curve (TYPE_1__*,int ,int *,int ,float*) ;

__attribute__((used)) static void decode_exp_lsp(WMACodecContext *s, int ch)
{
    float lsp_coefs[NB_LSP_COEFS];
    int val, i;

    for (i = 0; i < NB_LSP_COEFS; i++) {
        if (i == 0 || i >= 8)
            val = get_bits(&s->gb, 3);
        else
            val = get_bits(&s->gb, 4);
        lsp_coefs[i] = ff_wma_lsp_codebook[i][val];
    }

    wma_lsp_to_curve(s, s->exponents[ch], &s->max_exponent[ch],
                     s->block_len, lsp_coefs);
}
