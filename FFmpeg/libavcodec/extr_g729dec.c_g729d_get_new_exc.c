
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int16_t ;


 int SUBFRAME_SIZE ;
 int ff_celp_convolve_circ (int*,int const*,int ,int) ;
 int * phase_filter ;

__attribute__((used)) static void g729d_get_new_exc(
        int16_t* out,
        const int16_t* in,
        const int16_t* fc_cur,
        int dstate,
        int gain_code,
        int subframe_size)
{
    int i;
    int16_t fc_new[SUBFRAME_SIZE];

    ff_celp_convolve_circ(fc_new, fc_cur, phase_filter[dstate], subframe_size);

    for (i = 0; i < subframe_size; i++) {
        out[i] = in[i];
        out[i] -= (gain_code * fc_cur[i] + 0x2000) >> 14;
        out[i] += (gain_code * fc_new[i] + 0x2000) >> 14;
    }
}
