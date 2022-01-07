
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cheat_file ;


 int PATH_MAX_LENGTH ;
 int RARCH_LOG (char*,char*) ;
 scalar_t__ cheat_manager_get_game_specific_filename (char*,int,int) ;
 int cheat_manager_save (char*,int *,int) ;

void cheat_manager_save_game_specific_cheats(void)
{
   char cheat_file[PATH_MAX_LENGTH];

   if (cheat_manager_get_game_specific_filename(
            cheat_file, sizeof(cheat_file), 1))
   {
      RARCH_LOG("[Cheats]: Save game-specific cheatfile: %s\n", cheat_file);
      cheat_manager_save(cheat_file, ((void*)0), 1);
   }
}
