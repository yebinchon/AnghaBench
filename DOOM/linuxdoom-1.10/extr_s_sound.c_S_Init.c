
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ sfxinfo; } ;
typedef TYPE_1__ channel_t ;
struct TYPE_5__ {int lumpnum; int usefulness; } ;


 int I_SetChannels () ;
 int NUMSFX ;
 int PU_STATIC ;
 int S_SetMusicVolume (int) ;
 int S_SetSfxVolume (int) ;
 TYPE_3__* S_sfx ;
 scalar_t__ Z_Malloc (int,int ,int ) ;
 TYPE_1__* channels ;
 int fprintf (int ,char*,int) ;
 scalar_t__ mus_paused ;
 int numChannels ;
 int stderr ;

void S_Init
( int sfxVolume,
  int musicVolume )
{
  int i;

  fprintf( stderr, "S_Init: default sfx volume %d\n", sfxVolume);


  I_SetChannels();

  S_SetSfxVolume(sfxVolume);

  S_SetMusicVolume(musicVolume);




  channels =
    (channel_t *) Z_Malloc(numChannels*sizeof(channel_t), PU_STATIC, 0);


  for (i=0 ; i<numChannels ; i++)
    channels[i].sfxinfo = 0;


  mus_paused = 0;


  for (i=1 ; i<NUMSFX ; i++)
    S_sfx[i].lumpnum = S_sfx[i].usefulness = -1;
}
