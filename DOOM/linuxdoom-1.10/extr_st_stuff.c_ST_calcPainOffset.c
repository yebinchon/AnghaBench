
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int health; } ;


 int ST_FACESTRIDE ;
 int ST_NUMPAINFACES ;
 TYPE_1__* plyr ;

int ST_calcPainOffset(void)
{
    int health;
    static int lastcalc;
    static int oldhealth = -1;

    health = plyr->health > 100 ? 100 : plyr->health;

    if (health != oldhealth)
    {
 lastcalc = ST_FACESTRIDE * (((100 - health) * ST_NUMPAINFACES) / 101);
 oldhealth = health;
    }
    return lastcalc;
}
