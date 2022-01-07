
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {double cycle_time; double clock_period; } ;
typedef TYPE_1__ TimeFilter ;



double ff_timefilter_eval(TimeFilter *self, double delta)
{
    return self->cycle_time + self->clock_period * delta;
}
