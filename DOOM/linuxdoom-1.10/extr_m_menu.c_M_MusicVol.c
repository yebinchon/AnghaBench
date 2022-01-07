
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int S_SetMusicVolume (int) ;
 int snd_MusicVolume ;

void M_MusicVol(int choice)
{
    switch(choice)
    {
      case 0:
 if (snd_MusicVolume)
     snd_MusicVolume--;
 break;
      case 1:
 if (snd_MusicVolume < 15)
     snd_MusicVolume++;
 break;
    }

    S_SetMusicVolume(snd_MusicVolume );
}
