
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_PsndRate; int s_PicoCDBuffers; int CPUclock; int* KeyBinds; int scaling; double scale; double hscale40; double hscale32; } ;


 TYPE_1__ defaultConfig ;

void pemu_prep_defconfig(void)
{
 defaultConfig.s_PsndRate = 22050;
 defaultConfig.s_PicoCDBuffers = 64;
 defaultConfig.CPUclock = 333;
 defaultConfig.KeyBinds[ 4] = 1<<0;
 defaultConfig.KeyBinds[ 6] = 1<<1;
 defaultConfig.KeyBinds[ 7] = 1<<2;
 defaultConfig.KeyBinds[ 5] = 1<<3;
 defaultConfig.KeyBinds[14] = 1<<4;
 defaultConfig.KeyBinds[13] = 1<<5;
 defaultConfig.KeyBinds[15] = 1<<6;
 defaultConfig.KeyBinds[ 3] = 1<<7;
 defaultConfig.KeyBinds[12] = 1<<26;
 defaultConfig.KeyBinds[ 8] = 1<<27;
 defaultConfig.KeyBinds[ 9] = 1<<28;
 defaultConfig.KeyBinds[28] = 1<<0;
 defaultConfig.KeyBinds[30] = 1<<1;
 defaultConfig.KeyBinds[31] = 1<<2;
 defaultConfig.KeyBinds[29] = 1<<3;
 defaultConfig.scaling = 1;
 defaultConfig.scale = 1.20;
 defaultConfig.hscale40 = 1.25;
 defaultConfig.hscale32 = 1.56;
}
