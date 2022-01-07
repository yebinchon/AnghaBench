
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int frontend_psp_exec (char*,int) ;
 int psp_fork_mode ;

__attribute__((used)) static void frontend_psp_exitspawn(char *s, size_t len)
{
   bool should_load_game = 0;

   if (psp_fork_mode == 128)
      return;

   switch (psp_fork_mode)
   {
      case 129:
         should_load_game = 1;
         break;
      case 128:
      default:
         break;
   }

   frontend_psp_exec(s, should_load_game);
}
