
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ forwardmove; scalar_t__ consistancy; int buttons; } ;
typedef TYPE_2__ ticcmd_t ;
struct TYPE_9__ {scalar_t__ playerstate; char* message; TYPE_2__ cmd; TYPE_1__* mo; } ;
struct TYPE_7__ {scalar_t__ x; } ;


 int AM_Ticker () ;
 int BACKUPTICS ;


 int BTS_SAVEMASK ;
 int BTS_SAVESHIFT ;
 int BT_SPECIAL ;
 int BT_SPECIALMASK ;
 int D_PageTicker () ;
 int F_StartFinale () ;
 int F_Ticker () ;




 int G_DoCompleted () ;
 int G_DoLoadGame () ;
 int G_DoLoadLevel () ;
 int G_DoNewGame () ;
 int G_DoPlayDemo () ;
 int G_DoReborn (int) ;
 int G_DoSaveGame () ;
 int G_DoWorldDone () ;
 int G_ReadDemoTiccmd (TYPE_2__*) ;
 int G_WriteDemoTiccmd (TYPE_2__*) ;
 int HU_Ticker () ;
 int I_Error (char*,scalar_t__,scalar_t__) ;
 int MAXPLAYERS ;
 int M_ScreenShot () ;
 scalar_t__ PST_REBORN ;
 int P_Ticker () ;
 int ST_Ticker () ;
 int S_PauseSound () ;
 int S_ResumeSound () ;
 scalar_t__ TURBOTHRESHOLD ;
 int WI_Ticker () ;
 scalar_t__** consistancy ;
 size_t consoleplayer ;
 scalar_t__ demoplayback ;
 scalar_t__ demorecording ;
 int gameaction ;
 int gamestate ;
 int gametic ;
 int memcpy (TYPE_2__*,int *,int) ;
 int ** netcmds ;
 int netdemo ;
 scalar_t__ netgame ;
 int paused ;
 scalar_t__* playeringame ;
 TYPE_3__* players ;
 scalar_t__ rndindex ;
 int * savedescription ;
 int savegameslot ;
 int sprintf (char*,char*,char*) ;
 int strcpy (int *,char*) ;
 int ticdup ;

void G_Ticker (void)
{
    int i;
    int buf;
    ticcmd_t* cmd;


    for (i=0 ; i<MAXPLAYERS ; i++)
 if (playeringame[i] && players[i].playerstate == PST_REBORN)
     G_DoReborn (i);


    while (gameaction != 133)
    {
 switch (gameaction)
 {
   case 135:
     G_DoLoadLevel ();
     break;
   case 134:
     G_DoNewGame ();
     break;
   case 136:
     G_DoLoadGame ();
     break;
   case 131:
     G_DoSaveGame ();
     break;
   case 132:
     G_DoPlayDemo ();
     break;
   case 137:
     G_DoCompleted ();
     break;
   case 129:
     F_StartFinale ();
     break;
   case 128:
     G_DoWorldDone ();
     break;
   case 130:
     M_ScreenShot ();
     gameaction = 133;
     break;
   case 133:
     break;
 }
    }



    buf = (gametic/ticdup)%BACKUPTICS;

    for (i=0 ; i<MAXPLAYERS ; i++)
    {
 if (playeringame[i])
 {
     cmd = &players[i].cmd;

     memcpy (cmd, &netcmds[i][buf], sizeof(ticcmd_t));

     if (demoplayback)
  G_ReadDemoTiccmd (cmd);
     if (demorecording)
  G_WriteDemoTiccmd (cmd);


     if (cmd->forwardmove > TURBOTHRESHOLD
  && !(gametic&31) && ((gametic>>5)&3) == i )
     {
  static char turbomessage[80];
  extern char *player_names[4];
  sprintf (turbomessage, "%s is turbo!",player_names[i]);
  players[consoleplayer].message = turbomessage;
     }

     if (netgame && !netdemo && !(gametic%ticdup) )
     {
  if (gametic > BACKUPTICS
      && consistancy[i][buf] != cmd->consistancy)
  {
      I_Error ("consistency failure (%i should be %i)",
        cmd->consistancy, consistancy[i][buf]);
  }
  if (players[i].mo)
      consistancy[i][buf] = players[i].mo->x;
  else
      consistancy[i][buf] = rndindex;
     }
 }
    }


    for (i=0 ; i<MAXPLAYERS ; i++)
    {
 if (playeringame[i])
 {
     if (players[i].cmd.buttons & BT_SPECIAL)
     {
  switch (players[i].cmd.buttons & BT_SPECIALMASK)
  {
    case 143:
      paused ^= 1;
      if (paused)
   S_PauseSound ();
      else
   S_ResumeSound ();
      break;

    case 142:
      if (!savedescription[0])
   strcpy (savedescription, "NET GAME");
      savegameslot =
   (players[i].cmd.buttons & BTS_SAVEMASK)>>BTS_SAVESHIFT;
      gameaction = 131;
      break;
  }
     }
 }
    }


    switch (gamestate)
    {
      case 138:
 P_Ticker ();
 ST_Ticker ();
 AM_Ticker ();
 HU_Ticker ();
 break;

      case 139:
 WI_Ticker ();
 break;

      case 140:
 F_Ticker ();
 break;

      case 141:
 D_PageTicker ();
 break;
    }
}
