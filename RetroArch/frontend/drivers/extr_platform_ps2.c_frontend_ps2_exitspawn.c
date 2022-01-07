
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int frontend_ps2_exec (char*,int) ;
 int ps2_fork_mode ;

__attribute__((used)) static void frontend_ps2_exitspawn(char *core_path, size_t core_path_size)
{
   bool should_load_game = 0;

   if (ps2_fork_mode == 128)
      return;

   switch (ps2_fork_mode)
   {
      case 129:
         should_load_game = 1;
         break;
      case 128:
      default:
         break;
   }

   frontend_ps2_exec(core_path, should_load_game);
}
