
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int S_SetSfxVolume (int) ;
 int snd_SfxVolume ;

void M_SfxVol(int choice)
{
    switch(choice)
    {
      case 0:
 if (snd_SfxVolume)
     snd_SfxVolume--;
 break;
      case 1:
 if (snd_SfxVolume < 15)
     snd_SfxVolume++;
 break;
    }

    S_SetSfxVolume(snd_SfxVolume );
}
