
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int I_Error (char*,int) ;
 int I_SetMusicVolume (int) ;
 int snd_MusicVolume ;

void S_SetMusicVolume(int volume)
{
    if (volume < 0 || volume > 127)
    {
 I_Error("Attempt to set music volume at %d",
  volume);
    }

    I_SetMusicVolume(127);
    I_SetMusicVolume(volume);
    snd_MusicVolume = volume;
}
