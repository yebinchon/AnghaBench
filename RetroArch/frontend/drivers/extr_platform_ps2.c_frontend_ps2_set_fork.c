
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum frontend_fork { ____Placeholder_frontend_fork } frontend_fork ;






 int RARCH_LOG (char*) ;
 int ps2_fork_mode ;

__attribute__((used)) static bool frontend_ps2_set_fork(enum frontend_fork fork_mode)
{
   switch (fork_mode)
   {
      case 131:
         RARCH_LOG("FRONTEND_FORK_CORE\n");
         ps2_fork_mode = fork_mode;
         break;
      case 130:
         RARCH_LOG("FRONTEND_FORK_CORE_WITH_ARGS\n");
         ps2_fork_mode = fork_mode;
         break;
      case 128:
         RARCH_LOG("FRONTEND_FORK_RESTART\n");


         ps2_fork_mode = 131;
         break;
      case 129:
      default:
         return 0;
   }

   return 1;
}
