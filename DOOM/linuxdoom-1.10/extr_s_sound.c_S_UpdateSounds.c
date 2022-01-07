
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int pitch; scalar_t__ volume; scalar_t__ link; } ;
typedef TYPE_1__ sfxinfo_t ;
typedef int mobj_t ;
struct TYPE_5__ {void* origin; int handle; TYPE_1__* sfxinfo; } ;
typedef TYPE_2__ channel_t ;


 scalar_t__ I_SoundIsPlaying (int ) ;
 int I_UpdateSoundParams (int ,int,int,int) ;
 int NORM_PITCH ;
 int NORM_SEP ;
 int S_AdjustSoundParams (int *,void*,int*,int*,int*) ;
 int S_StopChannel (int) ;
 TYPE_2__* channels ;
 int numChannels ;
 int snd_SfxVolume ;

void S_UpdateSounds(void* listener_p)
{
    int audible;
    int cnum;
    int volume;
    int sep;
    int pitch;
    sfxinfo_t* sfx;
    channel_t* c;

    mobj_t* listener = (mobj_t*)listener_p;
    for (cnum=0 ; cnum<numChannels ; cnum++)
    {
 c = &channels[cnum];
 sfx = c->sfxinfo;

 if (c->sfxinfo)
 {
     if (I_SoundIsPlaying(c->handle))
     {

  volume = snd_SfxVolume;
  pitch = NORM_PITCH;
  sep = NORM_SEP;

  if (sfx->link)
  {
      pitch = sfx->pitch;
      volume += sfx->volume;
      if (volume < 1)
      {
   S_StopChannel(cnum);
   continue;
      }
      else if (volume > snd_SfxVolume)
      {
   volume = snd_SfxVolume;
      }
  }



  if (c->origin && listener_p != c->origin)
  {
      audible = S_AdjustSoundParams(listener,
        c->origin,
        &volume,
        &sep,
        &pitch);

      if (!audible)
      {
   S_StopChannel(cnum);
      }
      else
   I_UpdateSoundParams(c->handle, volume, sep, pitch);
  }
     }
     else
     {


  S_StopChannel(cnum);
     }
 }
    }





}
