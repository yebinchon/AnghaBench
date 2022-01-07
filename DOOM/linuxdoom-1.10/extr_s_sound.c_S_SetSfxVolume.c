
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int I_Error (char*,int) ;
 int snd_SfxVolume ;

void S_SetSfxVolume(int volume)
{

    if (volume < 0 || volume > 127)
 I_Error("Attempt to set sfx volume at %d", volume);

    snd_SfxVolume = volume;

}
