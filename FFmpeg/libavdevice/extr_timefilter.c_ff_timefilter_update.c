
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int count; double cycle_time; double clock_period; double feedback3_factor; int feedback2_factor; } ;
typedef TYPE_1__ TimeFilter ;


 double FFMAX (int ,double) ;

double ff_timefilter_update(TimeFilter *self, double system_time, double period)
{
    self->count++;
    if (self->count == 1) {
        self->cycle_time = system_time;
    } else {
        double loop_error;
        self->cycle_time += self->clock_period * period;
        loop_error = system_time - self->cycle_time;

        self->cycle_time += FFMAX(self->feedback2_factor, 1.0 / self->count) * loop_error;
        self->clock_period += self->feedback3_factor * loop_error;
    }
    return self->cycle_time;
}
