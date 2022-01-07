
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int health; } ;


 int M_Random () ;
 int ST_updateWidgets () ;
 TYPE_1__* plyr ;
 int st_clock ;
 int st_oldhealth ;
 int st_randomnumber ;

void ST_Ticker (void)
{

    st_clock++;
    st_randomnumber = M_Random();
    ST_updateWidgets();
    st_oldhealth = plyr->health;

}
