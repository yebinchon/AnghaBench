
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int premultiplied_coeffs ;
typedef scalar_t__ int64_t ;
typedef int int32_t ;
struct TYPE_3__ {int * private_data; } ;
typedef TYPE_1__ DCAADPCMEncContext ;


 int DCA_ADPCM_COEFFS ;
 int DCA_ADPCM_VQCODEBOOK_SZ ;
 scalar_t__ apply_filter (int ,scalar_t__*,int const) ;
 scalar_t__ calc_corr (int const*,int,int,int) ;
 int * ff_dca_adpcm_vb ;

__attribute__((used)) static int64_t find_best_filter(const DCAADPCMEncContext *s, const int32_t *in, int len)
{
    const premultiplied_coeffs *precalc_data = s->private_data;
    int i, j, k = 0;
    int vq = -1;
    int64_t err;
    int64_t min_err = 1ll << 62;
    int64_t corr[15];

    for (i = 0; i <= DCA_ADPCM_COEFFS; i++)
        for (j = i; j <= DCA_ADPCM_COEFFS; j++)
            corr[k++] = calc_corr(in+4, len, i, j);

    for (i = 0; i < DCA_ADPCM_VQCODEBOOK_SZ; i++) {
        err = apply_filter(ff_dca_adpcm_vb[i], corr, *precalc_data);
        if (err < min_err) {
            min_err = err;
            vq = i;
        }
        precalc_data++;
    }

    return vq;
}
