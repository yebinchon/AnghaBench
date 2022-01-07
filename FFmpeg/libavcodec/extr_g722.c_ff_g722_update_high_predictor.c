
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct G722Band {int log_factor; int scale_factor; } ;


 int av_clip (scalar_t__,int ,int) ;
 int do_adaptive_prediction (struct G722Band*,int const) ;
 scalar_t__* high_log_factor_step ;
 int linear_scale_factor (int) ;

void ff_g722_update_high_predictor(struct G722Band *band, const int dhigh,
                                  const int ihigh)
{
    do_adaptive_prediction(band, dhigh);


    band->log_factor = av_clip((band->log_factor * 127 >> 7) +
                                 high_log_factor_step[ihigh&1], 0, 22528);
    band->scale_factor = linear_scale_factor(band->log_factor - (10 << 11));
}
