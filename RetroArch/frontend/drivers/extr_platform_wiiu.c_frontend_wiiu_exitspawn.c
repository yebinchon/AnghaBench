
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FRONTEND_FORK_NONE ;
 int frontend_wiiu_exec (char*,int) ;
 int wiiu_fork_mode ;

__attribute__((used)) static void frontend_wiiu_exitspawn(char *s, size_t len)
{
   bool should_load_game = 0;

   if (wiiu_fork_mode == FRONTEND_FORK_NONE)
      return;

   switch (wiiu_fork_mode)
   {
      case 128:
         should_load_game = 1;
         break;
      default:
         break;
   }

   frontend_wiiu_exec(s, should_load_game);
}
