
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int GetBitContext ;



 int dequant_lsps (double*,int,int*,int const*,int,int ,double const*,double const*) ;
 int get_bits (int *,int) ;
 int wmavoice_dq_lsp16i1 ;
 int wmavoice_dq_lsp16i2 ;
 int wmavoice_dq_lsp16i3 ;

__attribute__((used)) static void dequant_lsp16i(GetBitContext *gb, double *lsps)
{
    static const uint16_t vec_sizes[5] = { 256, 64, 128, 64, 128 };
    static const double mul_lsf[5] = {
        3.3439586280e-3, 6.9908173703e-4,
        3.3216608306e-3, 1.0334960326e-3,
        3.1899104283e-3
    };
    static const double base_lsf[5] = {
        128 * -1.27576e-1, 128 * -2.4292e-2,
        128 * -1.28094e-1, 128 * -3.2128e-2,
        128 * -1.29816e-1
    };
    uint16_t v[5];

    v[0] = get_bits(gb, 8);
    v[1] = get_bits(gb, 6);
    v[2] = get_bits(gb, 7);
    v[3] = get_bits(gb, 6);
    v[4] = get_bits(gb, 7);

    dequant_lsps( lsps, 5, v, vec_sizes, 2,
                 wmavoice_dq_lsp16i1, mul_lsf, base_lsf);
    dequant_lsps(&lsps[5], 5, &v[2], &vec_sizes[2], 2,
                 wmavoice_dq_lsp16i2, &mul_lsf[2], &base_lsf[2]);
    dequant_lsps(&lsps[10], 6, &v[4], &vec_sizes[4], 1,
                 wmavoice_dq_lsp16i3, &mul_lsf[4], &base_lsf[4]);
}
