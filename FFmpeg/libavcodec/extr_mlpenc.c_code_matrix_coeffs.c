
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int32_t ;
struct TYPE_5__ {int** coeff; int* fbits; } ;
struct TYPE_7__ {TYPE_1__ matrix_params; } ;
struct TYPE_6__ {unsigned int num_channels; TYPE_3__* cur_decoding_params; } ;
typedef TYPE_1__ MatrixParams ;
typedef TYPE_2__ MLPEncodeContext ;
typedef TYPE_3__ DecodingParams ;



__attribute__((used)) static void code_matrix_coeffs(MLPEncodeContext *ctx, unsigned int mat)
{
    DecodingParams *dp = ctx->cur_decoding_params;
    MatrixParams *mp = &dp->matrix_params;
    int32_t coeff_mask = 0;
    unsigned int channel;
    unsigned int bits;

    for (channel = 0; channel < ctx->num_channels; channel++) {
        int32_t coeff = mp->coeff[mat][channel];
        coeff_mask |= coeff;
    }

    for (bits = 0; bits < 14 && !(coeff_mask & (1<<bits)); bits++);

    mp->fbits [mat] = 14 - bits;
}
