
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint8_t ;
typedef int const int16_t ;
typedef int PutBitContext ;


 int FFABS (int) ;
 size_t FFMIN (int,int) ;
 int GET_SIGN (int) ;
 int encode_vlc_codeword (int *,int ,int) ;
 int * ff_prores_ac_codebook ;
 int* ff_prores_lev_to_cb_index ;
 int* ff_prores_run_to_cb_index ;
 int put_sbits (int *,int,int ) ;

__attribute__((used)) static void encode_acs(PutBitContext *pb, int16_t *blocks,
                       int blocks_per_slice,
                       int plane_size_factor,
                       const uint8_t *scan, const int16_t *qmat)
{
    int idx, i;
    int run, level, run_cb, lev_cb;
    int max_coeffs, abs_level;

    max_coeffs = blocks_per_slice << 6;
    run_cb = ff_prores_run_to_cb_index[4];
    lev_cb = ff_prores_lev_to_cb_index[2];
    run = 0;

    for (i = 1; i < 64; i++) {
        for (idx = scan[i]; idx < max_coeffs; idx += 64) {
            level = blocks[idx] / qmat[scan[i]];
            if (level) {
                abs_level = FFABS(level);
                encode_vlc_codeword(pb, ff_prores_ac_codebook[run_cb], run);
                encode_vlc_codeword(pb, ff_prores_ac_codebook[lev_cb],
                                    abs_level - 1);
                put_sbits(pb, 1, GET_SIGN(level));

                run_cb = ff_prores_run_to_cb_index[FFMIN(run, 15)];
                lev_cb = ff_prores_lev_to_cb_index[FFMIN(abs_level, 9)];
                run = 0;
            } else {
                run++;
            }
        }
    }
}
