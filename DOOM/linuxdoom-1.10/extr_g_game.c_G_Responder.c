
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int type; char data1; int data2; int data3; } ;
typedef TYPE_1__ event_t ;
typedef int boolean ;


 scalar_t__ AM_Responder (TYPE_1__*) ;
 scalar_t__ F_Responder (TYPE_1__*) ;
 scalar_t__ GS_DEMOSCREEN ;
 scalar_t__ GS_FINALE ;
 scalar_t__ GS_LEVEL ;
 int G_DeathMatchSpawnPlayer (int ) ;
 scalar_t__ HU_Responder (TYPE_1__*) ;
 char KEY_F12 ;
 char KEY_PAUSE ;
 size_t MAXPLAYERS ;
 int M_StartControlPanel () ;
 char NUMKEYS ;
 scalar_t__ ST_Responder (TYPE_1__*) ;
 size_t consoleplayer ;
 int deathmatch ;
 scalar_t__ demoplayback ;
 scalar_t__ devparm ;
 size_t displayplayer ;




 scalar_t__ ga_nothing ;
 scalar_t__ gameaction ;
 int* gamekeydown ;
 scalar_t__ gamestate ;
 int* joybuttons ;
 int joyxmove ;
 int joyymove ;
 int mouseSensitivity ;
 int* mousebuttons ;
 int mousex ;
 int mousey ;
 int * playeringame ;
 int sendpause ;
 scalar_t__ singledemo ;

boolean G_Responder (event_t* ev)
{

    if (gamestate == GS_LEVEL && ev->type == 130
 && ev->data1 == KEY_F12 && (singledemo || !deathmatch) )
    {

 do
 {
     displayplayer++;
     if (displayplayer == MAXPLAYERS)
  displayplayer = 0;
 } while (!playeringame[displayplayer] && displayplayer != consoleplayer);
 return 1;
    }


    if (gameaction == ga_nothing && !singledemo &&
 (demoplayback || gamestate == GS_DEMOSCREEN)
 )
    {
 if (ev->type == 130 ||
     (ev->type == 128 && ev->data1) ||
     (ev->type == 131 && ev->data1) )
 {
     M_StartControlPanel ();
     return 1;
 }
 return 0;
    }

    if (gamestate == GS_LEVEL)
    {







 if (HU_Responder (ev))
     return 1;
 if (ST_Responder (ev))
     return 1;
 if (AM_Responder (ev))
     return 1;
    }

    if (gamestate == GS_FINALE)
    {
 if (F_Responder (ev))
     return 1;
    }

    switch (ev->type)
    {
      case 130:
 if (ev->data1 == KEY_PAUSE)
 {
     sendpause = 1;
     return 1;
 }
 if (ev->data1 <NUMKEYS)
     gamekeydown[ev->data1] = 1;
 return 1;

      case 129:
 if (ev->data1 <NUMKEYS)
     gamekeydown[ev->data1] = 0;
 return 0;

      case 128:
 mousebuttons[0] = ev->data1 & 1;
 mousebuttons[1] = ev->data1 & 2;
 mousebuttons[2] = ev->data1 & 4;
 mousex = ev->data2*(mouseSensitivity+5)/10;
 mousey = ev->data3*(mouseSensitivity+5)/10;
 return 1;

      case 131:
 joybuttons[0] = ev->data1 & 1;
 joybuttons[1] = ev->data1 & 2;
 joybuttons[2] = ev->data1 & 4;
 joybuttons[3] = ev->data1 & 8;
 joyxmove = ev->data2;
 joyymove = ev->data3;
 return 1;

      default:
 break;
    }

    return 0;
}
