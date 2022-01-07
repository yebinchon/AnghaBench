
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef TYPE_1__* timer_t ;
struct TYPE_4__ {scalar_t__ tstamp; } ;


 int timer_advance (TYPE_1__*,scalar_t__) ;

void
timer_update(timer_t timer, uint64_t tstamp)
{
 timer_advance(timer, tstamp - timer->tstamp);
 timer->tstamp = tstamp;
}
