
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ changed; } ;
struct TYPE_3__ {int EmuOpt; } ;


 int EOPT_EN_SRAM ;
 int EOPT_NO_AUTOSVCFG ;
 int PicoExit () ;
 TYPE_2__ SRam ;
 int config_writelrom (char*) ;
 TYPE_1__ currentConfig ;
 int emu_save_load_game (int ,int) ;
 int make_config_cfg (char*) ;
 int pprof_finish () ;
 int sndout_exit () ;
 int sync () ;

void emu_finish(void)
{

 if ((currentConfig.EmuOpt & EOPT_EN_SRAM) && SRam.changed) {
  emu_save_load_game(0, 1);
  SRam.changed = 0;
 }

 if (!(currentConfig.EmuOpt & EOPT_NO_AUTOSVCFG)) {
  char cfg[512];
  make_config_cfg(cfg);
  config_writelrom(cfg);



 }

 pprof_finish();

 PicoExit();
 sndout_exit();
}
