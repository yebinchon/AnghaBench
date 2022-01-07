
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef TYPE_1__* timer_t ;
struct TYPE_3__ {int tstamp; } ;



void
timer_start(timer_t timer, uint64_t tstamp)
{
 timer->tstamp = tstamp;
}
