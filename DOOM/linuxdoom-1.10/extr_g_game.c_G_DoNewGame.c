
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int G_InitNew (int ,int ,int ) ;
 scalar_t__ consoleplayer ;
 int d_episode ;
 int d_map ;
 int d_skill ;
 int deathmatch ;
 int demoplayback ;
 int fastparm ;
 int ga_nothing ;
 int gameaction ;
 int netdemo ;
 int netgame ;
 int nomonsters ;
 scalar_t__* playeringame ;
 int respawnparm ;

void G_DoNewGame (void)
{
    demoplayback = 0;
    netdemo = 0;
    netgame = 0;
    deathmatch = 0;
    playeringame[1] = playeringame[2] = playeringame[3] = 0;
    respawnparm = 0;
    fastparm = 0;
    nomonsters = 0;
    consoleplayer = 0;
    G_InitNew (d_skill, d_episode, d_map);
    gameaction = ga_nothing;
}
