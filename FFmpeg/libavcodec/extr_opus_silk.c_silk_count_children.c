
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int OpusRangeCoder ;


 int ff_opus_rc_dec_cdf (int *,scalar_t__) ;
 scalar_t__* ff_silk_model_pulse_location ;

__attribute__((used)) static inline void silk_count_children(OpusRangeCoder *rc, int model, int32_t total,
                                       int32_t child[2])
{
    if (total != 0) {
        child[0] = ff_opus_rc_dec_cdf(rc,
                       ff_silk_model_pulse_location[model] + (((total - 1 + 5) * (total - 1)) >> 1));
        child[1] = total - child[0];
    } else {
        child[0] = 0;
        child[1] = 0;
    }
}
