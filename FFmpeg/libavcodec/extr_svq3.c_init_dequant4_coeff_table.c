
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_3__ {int** dequant4_coeff; } ;
typedef TYPE_1__ SVQ3Context ;


 scalar_t__** ff_h264_dequant4_coeff_init ;
 int* ff_h264_quant_div6 ;
 int* ff_h264_quant_rem6 ;

__attribute__((used)) static void init_dequant4_coeff_table(SVQ3Context *s)
{
    int q, x;
    const int max_qp = 51;

    for (q = 0; q < max_qp + 1; q++) {
        int shift = ff_h264_quant_div6[q] + 2;
        int idx = ff_h264_quant_rem6[q];
        for (x = 0; x < 16; x++)
            s->dequant4_coeff[q][(x >> 2) | ((x << 2) & 0xF)] =
                ((uint32_t)ff_h264_dequant4_coeff_init[idx][(x & 1) + ((x >> 2) & 1)] * 16) << shift;
    }
}
