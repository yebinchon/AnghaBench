
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int GetBitContext ;



 int dequant_lsps (double*,int,int*,int const*,int,int ,double const*,double const*) ;
 int get_bits (int *,int) ;
 int wmavoice_dq_lsp10i ;

__attribute__((used)) static void dequant_lsp10i(GetBitContext *gb, double *lsps)
{
    static const uint16_t vec_sizes[4] = { 256, 64, 32, 32 };
    static const double mul_lsf[4] = {
        5.2187144800e-3, 1.4626986422e-3,
        9.6179549166e-4, 1.1325736225e-3
    };
    static const double base_lsf[4] = {
        128 * -2.15522e-1, 128 * -6.1646e-2,
        128 * -3.3486e-2, 128 * -5.7408e-2
    };
    uint16_t v[4];

    v[0] = get_bits(gb, 8);
    v[1] = get_bits(gb, 6);
    v[2] = get_bits(gb, 5);
    v[3] = get_bits(gb, 5);

    dequant_lsps(lsps, 10, v, vec_sizes, 4, wmavoice_dq_lsp10i,
                 mul_lsf, base_lsf);
}
