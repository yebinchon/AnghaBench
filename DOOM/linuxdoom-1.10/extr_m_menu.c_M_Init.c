
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int numitems; } ;
struct TYPE_10__ {TYPE_1__* prevMenu; } ;
struct TYPE_9__ {int x; int y; int routine; } ;
struct TYPE_8__ {int routine; } ;
struct TYPE_7__ {int y; int numitems; int lastOn; } ;


 TYPE_6__ EpiDef ;
 int M_DrawReadThis1 ;
 int M_FinishReadThis ;
 TYPE_1__ MainDef ;
 int * MainMenu ;
 TYPE_4__ NewDef ;
 TYPE_3__ ReadDef1 ;
 TYPE_2__* ReadMenu1 ;

 TYPE_1__* currentMenu ;
 int gamemode ;
 int itemOn ;
 scalar_t__ menuactive ;
 scalar_t__ messageLastMenuActive ;
 int * messageString ;
 scalar_t__ messageToPrint ;
 int quickSaveSlot ;
 size_t quitdoom ;
 size_t readthis ;


 scalar_t__ screenSize ;
 scalar_t__ screenblocks ;

 int skullAnimCounter ;
 scalar_t__ whichSkull ;

void M_Init (void)
{
    currentMenu = &MainDef;
    menuactive = 0;
    itemOn = currentMenu->lastOn;
    whichSkull = 0;
    skullAnimCounter = 10;
    screenSize = screenblocks - 3;
    messageToPrint = 0;
    messageString = ((void*)0);
    messageLastMenuActive = menuactive;
    quickSaveSlot = -1;





    switch ( gamemode )
    {
      case 131:



 MainMenu[readthis] = MainMenu[quitdoom];
 MainDef.numitems--;
 MainDef.y += 8;
 NewDef.prevMenu = &MainDef;
 ReadDef1.routine = M_DrawReadThis1;
 ReadDef1.x = 330;
 ReadDef1.y = 165;
 ReadMenu1[0].routine = M_FinishReadThis;
 break;
      case 128:


      case 130:

 EpiDef.numitems--;
 break;
      case 129:

      default:
 break;
    }

}
