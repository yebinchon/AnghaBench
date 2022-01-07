
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef int const int16_t ;


 int const FFABS (int const) ;
 size_t FFMIN (int,int) ;
 scalar_t__ estimate_vlc (int ,int) ;
 int * ff_prores_ac_codebook ;
 int* ff_prores_lev_to_cb_index ;
 int* ff_prores_run_to_cb_index ;

__attribute__((used)) static int estimate_acs(int *error, int16_t *blocks, int blocks_per_slice,
                        int plane_size_factor,
                        const uint8_t *scan, const int16_t *qmat)
{
    int idx, i;
    int run, level, run_cb, lev_cb;
    int max_coeffs, abs_level;
    int bits = 0;

    max_coeffs = blocks_per_slice << 6;
    run_cb = ff_prores_run_to_cb_index[4];
    lev_cb = ff_prores_lev_to_cb_index[2];
    run = 0;

    for (i = 1; i < 64; i++) {
        for (idx = scan[i]; idx < max_coeffs; idx += 64) {
            level = blocks[idx] / qmat[scan[i]];
            *error += FFABS(blocks[idx]) % qmat[scan[i]];
            if (level) {
                abs_level = FFABS(level);
                bits += estimate_vlc(ff_prores_ac_codebook[run_cb], run);
                bits += estimate_vlc(ff_prores_ac_codebook[lev_cb],
                                     abs_level - 1) + 1;

                run_cb = ff_prores_run_to_cb_index[FFMIN(run, 15)];
                lev_cb = ff_prores_lev_to_cb_index[FFMIN(abs_level, 9)];
                run = 0;
            } else {
                run++;
            }
        }
    }

    return bits;
}
