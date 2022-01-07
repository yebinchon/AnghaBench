
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SYSTEM_MCD ;
 int bram_save () ;
 scalar_t__ system_hw ;

void retro_unload_game(void)
{
   if (system_hw == SYSTEM_MCD)
      bram_save();
}
