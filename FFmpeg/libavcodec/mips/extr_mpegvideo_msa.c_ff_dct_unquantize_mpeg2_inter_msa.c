
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint16_t ;
typedef int int32_t ;
typedef int int16_t ;
struct TYPE_3__ {int * inter_matrix; } ;
typedef TYPE_1__ MpegEncContext ;


 int mpeg2_dct_unquantize_inter_msa (int*,int,int const*) ;

void ff_dct_unquantize_mpeg2_inter_msa(MpegEncContext *s,
                                       int16_t *block, int32_t index,
                                       int32_t qscale)
{
    const uint16_t *quant_matrix;
    int32_t sum = -1;

    quant_matrix = s->inter_matrix;

    sum = mpeg2_dct_unquantize_inter_msa(block, qscale, quant_matrix);

    block[63] ^= sum & 1;
}
