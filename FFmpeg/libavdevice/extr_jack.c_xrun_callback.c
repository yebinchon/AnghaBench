
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int jack_xrun; int timefilter; } ;
typedef TYPE_1__ JackData ;


 int ff_timefilter_reset (int ) ;

__attribute__((used)) static int xrun_callback(void *arg)
{
    JackData *self = arg;
    self->jack_xrun = 1;
    ff_timefilter_reset(self->timefilter);
    return 0;
}
