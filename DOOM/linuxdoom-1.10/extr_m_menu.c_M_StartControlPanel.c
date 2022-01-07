
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int lastOn; } ;


 TYPE_1__ MainDef ;
 TYPE_1__* currentMenu ;
 int itemOn ;
 int menuactive ;

void M_StartControlPanel (void)
{

    if (menuactive)
 return;

    menuactive = 1;
    currentMenu = &MainDef;
    itemOn = currentMenu->lastOn;
}
