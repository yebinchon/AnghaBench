
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {double clock_period; double feedback2_factor; double feedback3_factor; } ;
typedef TYPE_1__ TimeFilter ;


 int M_PI ;
 double M_SQRT2 ;
 TYPE_1__* av_mallocz (int) ;
 double qexpneg (double) ;

TimeFilter *ff_timefilter_new(double time_base,
                              double period,
                              double bandwidth)
{
    TimeFilter *self = av_mallocz(sizeof(TimeFilter));
    double o = 2 * M_PI * bandwidth * period * time_base;

    if (!self)
        return ((void*)0);

    self->clock_period = time_base;
    self->feedback2_factor = qexpneg(M_SQRT2 * o);
    self->feedback3_factor = qexpneg(o * o) / period;
    return self;
}
