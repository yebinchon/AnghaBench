
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int audio_fd ;
 int close (int ) ;

void I_ShutdownSound(void)
{

    close(audio_fd);

}
