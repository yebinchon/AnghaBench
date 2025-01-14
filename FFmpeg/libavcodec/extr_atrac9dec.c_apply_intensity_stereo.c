
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {size_t cpe_base_channel; int q_unit_cnt; int stereo_q_unit; int* is_signs; TYPE_1__* channel; } ;
struct TYPE_4__ {float* coeffs; } ;
typedef int ATRAC9Context ;
typedef TYPE_2__ ATRAC9BlockData ;


 int* at9_q_unit_to_coeff_idx ;

__attribute__((used)) static inline void apply_intensity_stereo(ATRAC9Context *s, ATRAC9BlockData *b,
                                          const int stereo)
{
    float *src = b->channel[ b->cpe_base_channel].coeffs;
    float *dst = b->channel[!b->cpe_base_channel].coeffs;

    if (!stereo)
        return;

    if (b->q_unit_cnt <= b->stereo_q_unit)
        return;

    for (int i = b->stereo_q_unit; i < b->q_unit_cnt; i++) {
        const int sign = b->is_signs[i];
        const int start = at9_q_unit_to_coeff_idx[i + 0];
        const int end = at9_q_unit_to_coeff_idx[i + 1];
        for (int j = start; j < end; j++)
            dst[j] = sign*src[j];
    }
}
