
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int handle; } ;


 int I_PauseSong (int ) ;
 int mus_paused ;
 TYPE_1__* mus_playing ;

void S_PauseSound(void)
{
    if (mus_playing && !mus_paused)
    {
 I_PauseSong(mus_playing->handle);
 mus_paused = 1;
    }
}
