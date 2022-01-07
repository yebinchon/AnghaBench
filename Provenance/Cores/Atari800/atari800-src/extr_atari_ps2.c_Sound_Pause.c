
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int audsrv_stop_audio () ;

void Sound_Pause(void)
{
 audsrv_stop_audio();
}
