
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FRONTEND_FORK_NONE ;
 int ctr_fork_mode ;
 int frontend_ctr_exec (char*,int) ;

__attribute__((used)) static void frontend_ctr_exitspawn(char* s, size_t len)
{
   bool should_load_game = 0;

   if (ctr_fork_mode == FRONTEND_FORK_NONE)
      return;

   switch (ctr_fork_mode)
   {
      case 128:
         should_load_game = 1;
         break;
      default:
         break;
   }

   frontend_ctr_exec(s, should_load_game);
}
