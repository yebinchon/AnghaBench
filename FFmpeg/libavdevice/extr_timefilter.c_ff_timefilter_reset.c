
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ count; } ;
typedef TYPE_1__ TimeFilter ;



void ff_timefilter_reset(TimeFilter *self)
{
    self->count = 0;
}
