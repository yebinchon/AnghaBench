
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef int int16_t ;
struct TYPE_8__ {scalar_t__ perm_type; int idct_permutation; } ;
struct TYPE_7__ {int (* fdct ) (int*) ;} ;
struct TYPE_6__ {int* scantable; } ;
struct TYPE_9__ {int** q_intra_matrix; int** q_chroma_intra_matrix; TYPE_3__ idsp; TYPE_2__ fdsp; TYPE_1__ intra_scantable; } ;
typedef TYPE_4__ MpegEncContext ;


 int DNX10BIT_QMAT_SHIFT ;
 scalar_t__ FF_IDCT_PERM_NONE ;
 int FF_SIGNBIT (int) ;
 int ff_block_permute (int*,int ,int const*,int) ;
 int stub1 (int*) ;

__attribute__((used)) static int dnxhd_10bit_dct_quantize(MpegEncContext *ctx, int16_t *block,
                                    int n, int qscale, int *overflow)
{
    const uint8_t *scantable= ctx->intra_scantable.scantable;
    const int *qmat = n<4 ? ctx->q_intra_matrix[qscale] : ctx->q_chroma_intra_matrix[qscale];
    int last_non_zero = 0;
    int i;

    ctx->fdsp.fdct(block);


    block[0] = (block[0] + 2) >> 2;

    for (i = 1; i < 64; ++i) {
        int j = scantable[i];
        int sign = FF_SIGNBIT(block[j]);
        int level = (block[j] ^ sign) - sign;
        level = level * qmat[j] >> DNX10BIT_QMAT_SHIFT;
        block[j] = (level ^ sign) - sign;
        if (level)
            last_non_zero = i;
    }


    if (ctx->idsp.perm_type != FF_IDCT_PERM_NONE)
        ff_block_permute(block, ctx->idsp.idct_permutation,
                         scantable, last_non_zero);

    return last_non_zero;
}
