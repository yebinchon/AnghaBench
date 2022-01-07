
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {TYPE_3__* sfxinfo; int handle; } ;
typedef TYPE_1__ channel_t ;
struct TYPE_5__ {int usefulness; } ;


 scalar_t__ I_SoundIsPlaying (int ) ;
 int I_StopSound (int ) ;
 TYPE_3__* S_sfx ;
 TYPE_1__* channels ;
 int fprintf (int ,char*) ;
 int numChannels ;
 size_t sfx_sawful ;
 int stderr ;

void S_StopChannel(int cnum)
{

    int i;
    channel_t* c = &channels[cnum];

    if (c->sfxinfo)
    {

 if (I_SoundIsPlaying(c->handle))
 {




     I_StopSound(c->handle);
 }



 for (i=0 ; i<numChannels ; i++)
 {
     if (cnum != i
  && c->sfxinfo == channels[i].sfxinfo)
     {
  break;
     }
 }


 c->sfxinfo->usefulness--;

 c->sfxinfo = 0;
    }
}
