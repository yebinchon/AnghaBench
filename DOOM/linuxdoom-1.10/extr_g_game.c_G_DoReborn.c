
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* mo; } ;
struct TYPE_7__ {int type; } ;
struct TYPE_6__ {int * player; } ;


 scalar_t__ G_CheckSpot (int,TYPE_2__*) ;
 int G_DeathMatchSpawnPlayer (int) ;
 int MAXPLAYERS ;
 int P_SpawnPlayer (TYPE_2__*) ;
 scalar_t__ deathmatch ;
 int ga_loadlevel ;
 int gameaction ;
 int netgame ;
 TYPE_3__* players ;
 TYPE_2__* playerstarts ;

void G_DoReborn (int playernum)
{
    int i;

    if (!netgame)
    {

 gameaction = ga_loadlevel;
    }
    else
    {



 players[playernum].mo->player = ((void*)0);


 if (deathmatch)
 {
     G_DeathMatchSpawnPlayer (playernum);
     return;
 }

 if (G_CheckSpot (playernum, &playerstarts[playernum]) )
 {
     P_SpawnPlayer (&playerstarts[playernum]);
     return;
 }


 for (i=0 ; i<MAXPLAYERS ; i++)
 {
     if (G_CheckSpot (playernum, &playerstarts[i]) )
     {
  playerstarts[i].type = playernum+1;
  P_SpawnPlayer (&playerstarts[i]);
  playerstarts[i].type = i+1;
  return;
     }

 }
 P_SpawnPlayer (&playerstarts[playernum]);
    }
}
