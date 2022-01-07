
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int buttons; scalar_t__ chatchar; } ;
typedef TYPE_1__ ticcmd_t ;
struct TYPE_5__ {int numnodes; } ;


 int BACKUPTICS ;
 int BT_SPECIAL ;
 int D_DoAdvanceDemo () ;
 int G_Ticker () ;
 int I_Error (char*) ;
 int I_GetTime () ;
 int MAXINT ;
 int MAXPLAYERS ;
 int M_Ticker () ;
 int NetUpdate () ;
 scalar_t__ advancedemo ;
 int consoleplayer ;
 scalar_t__ debugfile ;
 int demoplayback ;
 TYPE_3__* doomcom ;
 int fprintf (scalar_t__,char*,int,int,int) ;
 int frameon ;
 int* frameskip ;
 int gametic ;
 int gametime ;
 TYPE_1__** netcmds ;
 int* nettics ;
 size_t* nodeforplayer ;
 scalar_t__* nodeingame ;
 int oldnettics ;
 scalar_t__* playeringame ;
 int skiptics ;
 int ticdup ;

void TryRunTics (void)
{
    int i;
    int lowtic;
    int entertic;
    static int oldentertics;
    int realtics;
    int availabletics;
    int counts;
    int numplaying;


    entertic = I_GetTime ()/ticdup;
    realtics = entertic - oldentertics;
    oldentertics = entertic;


    NetUpdate ();

    lowtic = MAXINT;
    numplaying = 0;
    for (i=0 ; i<doomcom->numnodes ; i++)
    {
 if (nodeingame[i])
 {
     numplaying++;
     if (nettics[i] < lowtic)
  lowtic = nettics[i];
 }
    }
    availabletics = lowtic - gametic/ticdup;


    if (realtics < availabletics-1)
 counts = realtics+1;
    else if (realtics < availabletics)
 counts = realtics;
    else
 counts = availabletics;

    if (counts < 1)
 counts = 1;

    frameon++;

    if (debugfile)
 fprintf (debugfile,
   "=======real: %i  avail: %i  game: %i\n",
   realtics, availabletics,counts);

    if (!demoplayback)
    {


 for (i=0 ; i<MAXPLAYERS ; i++)
     if (playeringame[i])
  break;
 if (consoleplayer == i)
 {

 }
 else
 {
     if (nettics[0] <= nettics[nodeforplayer[i]])
     {
  gametime--;

     }
     frameskip[frameon&3] = (oldnettics > nettics[nodeforplayer[i]]);
     oldnettics = nettics[0];
     if (frameskip[0] && frameskip[1] && frameskip[2] && frameskip[3])
     {
  skiptics = 1;

     }
 }
    }


    while (lowtic < gametic/ticdup + counts)
    {
 NetUpdate ();
 lowtic = MAXINT;

 for (i=0 ; i<doomcom->numnodes ; i++)
     if (nodeingame[i] && nettics[i] < lowtic)
  lowtic = nettics[i];

 if (lowtic < gametic/ticdup)
     I_Error ("TryRunTics: lowtic < gametic");


 if (I_GetTime ()/ticdup - entertic >= 20)
 {
     M_Ticker ();
     return;
 }
    }


    while (counts--)
    {
 for (i=0 ; i<ticdup ; i++)
 {
     if (gametic/ticdup > lowtic)
  I_Error ("gametic>lowtic");
     if (advancedemo)
  D_DoAdvanceDemo ();
     M_Ticker ();
     G_Ticker ();
     gametic++;


     if (i != ticdup-1)
     {
  ticcmd_t *cmd;
  int buf;
  int j;

  buf = (gametic/ticdup)%BACKUPTICS;
  for (j=0 ; j<MAXPLAYERS ; j++)
  {
      cmd = &netcmds[j][buf];
      cmd->chatchar = 0;
      if (cmd->buttons & BT_SPECIAL)
   cmd->buttons = 0;
  }
     }
 }
 NetUpdate ();
    }
}
