
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int serial; } ;
typedef TYPE_1__ Clock ;


 scalar_t__ AV_NOSYNC_THRESHOLD ;
 scalar_t__ fabs (double) ;
 double get_clock (TYPE_1__*) ;
 scalar_t__ isnan (double) ;
 int set_clock (TYPE_1__*,double,int ) ;

__attribute__((used)) static void sync_clock_to_slave(Clock *c, Clock *slave)
{
    double clock = get_clock(c);
    double slave_clock = get_clock(slave);
    if (!isnan(slave_clock) && (isnan(clock) || fabs(clock - slave_clock) > AV_NOSYNC_THRESHOLD))
        set_clock(c, slave_clock, slave->serial);
}
