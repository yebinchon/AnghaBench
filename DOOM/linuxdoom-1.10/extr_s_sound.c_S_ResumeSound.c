
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int handle; } ;


 int I_ResumeSong (int ) ;
 int mus_paused ;
 TYPE_1__* mus_playing ;

void S_ResumeSound(void)
{
    if (mus_playing && mus_paused)
    {
 I_ResumeSong(mus_playing->handle);
 mus_paused = 0;
    }
}
