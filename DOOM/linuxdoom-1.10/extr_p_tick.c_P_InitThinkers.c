
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct TYPE_2__* next; struct TYPE_2__* prev; } ;


 TYPE_1__ thinkercap ;

void P_InitThinkers (void)
{
    thinkercap.prev = thinkercap.next = &thinkercap;
}
