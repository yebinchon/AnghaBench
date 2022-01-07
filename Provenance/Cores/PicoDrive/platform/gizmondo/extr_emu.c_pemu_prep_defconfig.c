
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_PsndRate; int* KeyBinds; scalar_t__ scaling; scalar_t__ s_PicoCDBuffers; } ;


 TYPE_1__ defaultConfig ;

void pemu_prep_defconfig(void)
{
 defaultConfig.s_PsndRate = 22050;
 defaultConfig.s_PicoCDBuffers = 0;
 defaultConfig.KeyBinds[ 2] = 1<<0;
 defaultConfig.KeyBinds[ 3] = 1<<1;
 defaultConfig.KeyBinds[ 0] = 1<<2;
 defaultConfig.KeyBinds[ 1] = 1<<3;
 defaultConfig.KeyBinds[ 5] = 1<<4;
 defaultConfig.KeyBinds[ 6] = 1<<5;
 defaultConfig.KeyBinds[ 7] = 1<<6;
 defaultConfig.KeyBinds[ 4] = 1<<7;
 defaultConfig.KeyBinds[13] = 1<<26;
 defaultConfig.KeyBinds[ 8] = 1<<27;
 defaultConfig.KeyBinds[ 9] = 1<<28;
 defaultConfig.KeyBinds[12] = 1<<29;
 defaultConfig.KeyBinds[11] = 1<<30;
 defaultConfig.scaling = 0;
}
