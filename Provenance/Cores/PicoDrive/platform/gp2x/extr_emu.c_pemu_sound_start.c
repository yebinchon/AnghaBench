
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ gp2x_soc_t ;
struct TYPE_4__ {scalar_t__ frame_count; } ;
struct TYPE_6__ {TYPE_1__ m; } ;
struct TYPE_5__ {int EmuOpt; int volume; } ;


 int EOPT_EN_SOUND ;
 TYPE_3__ Pico ;
 int PsndRate ;
 int PsndRerate (int) ;
 scalar_t__ SOCID_POLLUX ;
 TYPE_2__ currentConfig ;
 int emu_sound_start () ;
 int plat_target_step_volume (int *,int ) ;
 int pollux_get_real_snd_rate (int ) ;
 scalar_t__ soc_detect () ;

void pemu_sound_start(void)
{
 gp2x_soc_t soc;

 emu_sound_start();

 if (currentConfig.EmuOpt & EOPT_EN_SOUND)
 {
  soc = soc_detect();
  if (soc == SOCID_POLLUX) {
   PsndRate = pollux_get_real_snd_rate(PsndRate);
   PsndRerate(Pico.m.frame_count ? 1 : 0);
  }

  plat_target_step_volume(&currentConfig.volume, 0);
 }
}
