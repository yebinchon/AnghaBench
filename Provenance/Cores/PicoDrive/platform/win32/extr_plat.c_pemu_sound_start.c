
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int EmuOpt; } ;


 int DSoundInit (int ,int ,int,int ) ;
 int EOPT_EN_SOUND ;
 int EOPT_EXT_FRMLIMIT ;
 int FrameWnd ;
 int POPT_EN_STEREO ;
 int PicoOpt ;
 int PicoWriteSound ;
 int PsndLen ;
 int * PsndOut ;
 int PsndRate ;
 int PsndRerate (int ) ;
 TYPE_1__ currentConfig ;
 int lprintf (char*) ;
 scalar_t__ sndbuff ;
 int update_sound ;

void pemu_sound_start(void)
{
 int ret;

 PsndOut = ((void*)0);
 currentConfig.EmuOpt &= ~EOPT_EXT_FRMLIMIT;


 if (currentConfig.EmuOpt & EOPT_EN_SOUND)
 {
  PsndRerate(0);

  ret = DSoundInit(FrameWnd, PsndRate, (PicoOpt & POPT_EN_STEREO) ? 1 : 0, PsndLen);
  if (ret != 0) {
   lprintf("dsound init failed\n");
   return;
  }

  PsndOut = (void *)sndbuff;
  PicoWriteSound = update_sound;
  currentConfig.EmuOpt |= EOPT_EXT_FRMLIMIT;
 }
}
