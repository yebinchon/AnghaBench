
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ skill_t ;
struct TYPE_6__ {int speed; } ;
struct TYPE_5__ {int playerstate; } ;
struct TYPE_4__ {int tics; } ;


 int FRACUNIT ;
 int G_DoLoadLevel () ;
 int MAXPLAYERS ;
 size_t MT_BRUISERSHOT ;
 size_t MT_HEADSHOT ;
 size_t MT_TROOPSHOT ;
 int M_ClearRandom () ;
 int PST_REBORN ;
 int R_TextureNumForName (char*) ;
 int S_ResumeSound () ;
 int S_SARG_PAIN2 ;
 int S_SARG_RUN1 ;
 int automapactive ;
 scalar_t__ commercial ;
 int demoplayback ;
 scalar_t__ fastparm ;
 int gameepisode ;
 int gamemap ;
 scalar_t__ gamemode ;
 scalar_t__ gameskill ;
 TYPE_3__* mobjinfo ;
 int paused ;
 TYPE_2__* players ;
 int respawnmonsters ;
 scalar_t__ respawnparm ;
 scalar_t__ retail ;
 scalar_t__ shareware ;
 scalar_t__ sk_nightmare ;
 int skytexture ;
 TYPE_1__* states ;
 int usergame ;
 int viewactive ;

void
G_InitNew
( skill_t skill,
  int episode,
  int map )
{
    int i;

    if (paused)
    {
 paused = 0;
 S_ResumeSound ();
    }


    if (skill > sk_nightmare)
 skill = sk_nightmare;





    if (episode < 1)
      episode = 1;

    if ( gamemode == retail )
    {
      if (episode > 4)
 episode = 4;
    }
    else if ( gamemode == shareware )
    {
      if (episode > 1)
    episode = 1;
    }
    else
    {
      if (episode > 3)
 episode = 3;
    }



    if (map < 1)
 map = 1;

    if ( (map > 9)
  && ( gamemode != commercial) )
      map = 9;

    M_ClearRandom ();

    if (skill == sk_nightmare || respawnparm )
 respawnmonsters = 1;
    else
 respawnmonsters = 0;

    if (fastparm || (skill == sk_nightmare && gameskill != sk_nightmare) )
    {
 for (i=S_SARG_RUN1 ; i<=S_SARG_PAIN2 ; i++)
     states[i].tics >>= 1;
 mobjinfo[MT_BRUISERSHOT].speed = 20*FRACUNIT;
 mobjinfo[MT_HEADSHOT].speed = 20*FRACUNIT;
 mobjinfo[MT_TROOPSHOT].speed = 20*FRACUNIT;
    }
    else if (skill != sk_nightmare && gameskill == sk_nightmare)
    {
 for (i=S_SARG_RUN1 ; i<=S_SARG_PAIN2 ; i++)
     states[i].tics <<= 1;
 mobjinfo[MT_BRUISERSHOT].speed = 15*FRACUNIT;
 mobjinfo[MT_HEADSHOT].speed = 10*FRACUNIT;
 mobjinfo[MT_TROOPSHOT].speed = 10*FRACUNIT;
    }



    for (i=0 ; i<MAXPLAYERS ; i++)
 players[i].playerstate = PST_REBORN;

    usergame = 1;
    paused = 0;
    demoplayback = 0;
    automapactive = 0;
    viewactive = 1;
    gameepisode = episode;
    gamemap = map;
    gameskill = skill;

    viewactive = 1;


    if ( gamemode == commercial)
    {
 skytexture = R_TextureNumForName ("SKY3");
 if (gamemap < 12)
     skytexture = R_TextureNumForName ("SKY1");
 else
     if (gamemap < 21)
  skytexture = R_TextureNumForName ("SKY2");
    }
    else
 switch (episode)
 {
   case 1:
     skytexture = R_TextureNumForName ("SKY1");
     break;
   case 2:
     skytexture = R_TextureNumForName ("SKY2");
     break;
   case 3:
     skytexture = R_TextureNumForName ("SKY3");
     break;
   case 4:
     skytexture = R_TextureNumForName ("SKY4");
     break;
 }

    G_DoLoadLevel ();
}
