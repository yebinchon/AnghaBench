
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_device; int s_default; } ;


 int DI_Close () ;
 int audio_shutdown () ;
 TYPE_1__ config ;
 int config_save () ;
 int gx_audio_Shutdown () ;
 int gx_video_Shutdown () ;
 int slot_autosave (int ,int ) ;

void shutdown(void)
{

  config_save();


  slot_autosave(config.s_default,config.s_device);


  audio_shutdown();
  gx_audio_Shutdown();
  gx_video_Shutdown();



}
