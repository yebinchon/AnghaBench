
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t* ff_zigzag_direct ;
 int* unscaled_quant_matrix ;

__attribute__((used)) static void compute_quant_matrix(int *output, int qscale)
{
    int i;
    for (i = 0; i < 64; i++) output[i] = unscaled_quant_matrix[ff_zigzag_direct[i]] * qscale;
}
