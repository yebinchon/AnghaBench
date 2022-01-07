
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* quant_matrix; } ;
typedef TYPE_1__ MadContext ;


 int* ff_inv_aanscales ;
 int* ff_mpeg1_default_intra_matrix ;

__attribute__((used)) static void calc_quant_matrix(MadContext *s, int qscale)
{
    int i;

    s->quant_matrix[0] = (ff_inv_aanscales[0]*ff_mpeg1_default_intra_matrix[0]) >> 11;
    for (i=1; i<64; i++)
        s->quant_matrix[i] = (ff_inv_aanscales[i]*ff_mpeg1_default_intra_matrix[i]*qscale + 32) >> 10;
}
