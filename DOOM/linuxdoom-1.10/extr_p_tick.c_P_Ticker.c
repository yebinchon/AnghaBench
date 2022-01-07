
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int viewz; } ;


 int MAXPLAYERS ;
 int P_PlayerThink (TYPE_1__*) ;
 int P_RespawnSpecials () ;
 int P_RunThinkers () ;
 int P_UpdateSpecials () ;
 size_t consoleplayer ;
 int demoplayback ;
 int leveltime ;
 scalar_t__ menuactive ;
 int netgame ;
 scalar_t__ paused ;
 scalar_t__* playeringame ;
 TYPE_1__* players ;

void P_Ticker (void)
{
    int i;


    if (paused)
 return;


    if ( !netgame
  && menuactive
  && !demoplayback
  && players[consoleplayer].viewz != 1)
    {
 return;
    }


    for (i=0 ; i<MAXPLAYERS ; i++)
 if (playeringame[i])
     P_PlayerThink (&players[i]);

    P_RunThinkers ();
    P_UpdateSpecials ();
    P_RespawnSpecials ();


    leveltime++;
}
