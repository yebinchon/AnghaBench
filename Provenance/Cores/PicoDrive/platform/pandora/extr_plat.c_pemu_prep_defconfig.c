
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int EmuOpt; int scaling; int s_PicoOpt; } ;


 int EOPT_16BPP ;
 int EOPT_VSYNC ;
 int POPT_EN_MCD_GFX ;
 int SCALE_2x2_3x2 ;
 TYPE_1__ defaultConfig ;

void pemu_prep_defconfig(void)
{
 defaultConfig.EmuOpt |= EOPT_VSYNC|EOPT_16BPP;
 defaultConfig.s_PicoOpt |= POPT_EN_MCD_GFX;
 defaultConfig.scaling = SCALE_2x2_3x2;
}
