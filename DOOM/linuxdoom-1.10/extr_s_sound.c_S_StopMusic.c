
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ data; int handle; } ;


 int I_ResumeSong (int ) ;
 int I_StopSong (int ) ;
 int I_UnRegisterSong (int ) ;
 int PU_CACHE ;
 int Z_ChangeTag (scalar_t__,int ) ;
 scalar_t__ mus_paused ;
 TYPE_1__* mus_playing ;

void S_StopMusic(void)
{
    if (mus_playing)
    {
 if (mus_paused)
     I_ResumeSong(mus_playing->handle);

 I_StopSong(mus_playing->handle);
 I_UnRegisterSong(mus_playing->handle);
 Z_ChangeTag(mus_playing->data, PU_CACHE);

 mus_playing->data = 0;
 mus_playing = 0;
    }
}
