
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ sfxinfo; } ;


 int S_ChangeMusic (int,int) ;
 int S_StopChannel (int) ;
 TYPE_1__* channels ;
 scalar_t__ commercial ;
 int gameepisode ;
 int gamemap ;
 scalar_t__ gamemode ;
 int mus_e1m1 ;
 int mus_e1m5 ;
 int mus_e1m9 ;
 int mus_e2m4 ;
 int mus_e2m5 ;
 int mus_e2m6 ;
 int mus_e2m7 ;
 int mus_e3m2 ;
 int mus_e3m3 ;
 int mus_e3m4 ;
 scalar_t__ mus_paused ;
 int mus_runnin ;
 int nextcleanup ;
 int numChannels ;

void S_Start(void)
{
  int cnum;
  int mnum;



  for (cnum=0 ; cnum<numChannels ; cnum++)
    if (channels[cnum].sfxinfo)
      S_StopChannel(cnum);


  mus_paused = 0;

  if (gamemode == commercial)
    mnum = mus_runnin + gamemap - 1;
  else
  {
    int spmus[]=
    {


      mus_e3m4,
      mus_e3m2,
      mus_e3m3,
      mus_e1m5,
      mus_e2m7,
      mus_e2m4,
      mus_e2m6,
      mus_e2m5,
      mus_e1m9
    };

    if (gameepisode < 4)
      mnum = mus_e1m1 + (gameepisode-1)*9 + gamemap-1;
    else
      mnum = spmus[gamemap-1];
    }





  S_ChangeMusic(mnum, 1);

  nextcleanup = 15;
}
