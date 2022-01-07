
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct retro_game_info {int dummy; } ;



bool libretro_dummy_retro_load_game(const struct retro_game_info *info)
{
   (void)info;
   return 0;
}
