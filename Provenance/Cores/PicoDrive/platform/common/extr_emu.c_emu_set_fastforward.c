
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int Frameskip; int EmuOpt; } ;


 void* PsndOut ;
 int PsndRerate (int) ;
 TYPE_1__ currentConfig ;
 int emu_status_msg (char*) ;

void emu_set_fastforward(int set_on)
{
 static void *set_PsndOut = ((void*)0);
 static int set_Frameskip, set_EmuOpt, is_on = 0;

 if (set_on && !is_on) {
  set_PsndOut = PsndOut;
  set_Frameskip = currentConfig.Frameskip;
  set_EmuOpt = currentConfig.EmuOpt;
  PsndOut = ((void*)0);
  currentConfig.Frameskip = 8;
  currentConfig.EmuOpt &= ~4;
  currentConfig.EmuOpt |= 0x40000;
  is_on = 1;
  emu_status_msg("FAST FORWARD");
 }
 else if (!set_on && is_on) {
  PsndOut = set_PsndOut;
  currentConfig.Frameskip = set_Frameskip;
  currentConfig.EmuOpt = set_EmuOpt;
  PsndRerate(1);
  is_on = 0;
 }
}
