
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NellyMoserEncodeContext ;


 int NELLY_BANDS ;
 int* ff_nelly_delta_table ;
 int* ff_nelly_init_table ;
 int find_best (float,int*,int ,int,int) ;
 int sf_delta_lut ;
 int sf_lut ;

__attribute__((used)) static void get_exponent_greedy(NellyMoserEncodeContext *s, float *cand, int *idx_table)
{
    int band, best_idx, power_idx = 0;
    float power_candidate;


    find_best(cand[0], ff_nelly_init_table, sf_lut, -20, 96);
    idx_table[0] = best_idx;
    power_idx = ff_nelly_init_table[best_idx];

    for (band = 1; band < NELLY_BANDS; band++) {
        power_candidate = cand[band] - power_idx;
        find_best(power_candidate, ff_nelly_delta_table, sf_delta_lut, 37, 78);
        idx_table[band] = best_idx;
        power_idx += ff_nelly_delta_table[best_idx];
    }
}
