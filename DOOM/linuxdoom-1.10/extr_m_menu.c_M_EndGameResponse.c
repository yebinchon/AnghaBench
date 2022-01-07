
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lastOn; } ;


 int D_StartTitle () ;
 int M_ClearMenus () ;
 TYPE_1__* currentMenu ;
 int itemOn ;

void M_EndGameResponse(int ch)
{
    if (ch != 'y')
 return;

    currentMenu->lastOn = itemOn;
    M_ClearMenus ();
    D_StartTitle ();
}
