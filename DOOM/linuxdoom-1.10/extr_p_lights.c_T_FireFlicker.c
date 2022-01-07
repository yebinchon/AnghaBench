
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int count; int minlight; int maxlight; TYPE_1__* sector; } ;
typedef TYPE_2__ fireflicker_t ;
struct TYPE_4__ {int lightlevel; } ;


 int P_Random () ;

void T_FireFlicker (fireflicker_t* flick)
{
    int amount;

    if (--flick->count)
 return;

    amount = (P_Random()&3)*16;

    if (flick->sector->lightlevel - amount < flick->minlight)
 flick->sector->lightlevel = flick->minlight;
    else
 flick->sector->lightlevel = flick->maxlight - amount;

    flick->count = 4;
}
