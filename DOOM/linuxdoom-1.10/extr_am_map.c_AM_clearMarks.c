
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int x; } ;


 int AM_NUMMARKPOINTS ;
 scalar_t__ markpointnum ;
 TYPE_1__* markpoints ;

void AM_clearMarks(void)
{
    int i;

    for (i=0;i<AM_NUMMARKPOINTS;i++)
 markpoints[i].x = -1;
    markpointnum = 0;
}
