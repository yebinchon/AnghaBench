
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int size; } ;


 int RARCH_CTL_IS_SRAM_USED ;
 int cheat_manager_save_game_specific_cheats () ;
 int content_save_ram_file (unsigned int) ;
 int rarch_ctl (int ,int *) ;
 TYPE_1__* task_save_files ;

bool event_save_files(void)
{
   unsigned i;

   cheat_manager_save_game_specific_cheats();
   if (!task_save_files ||
         !rarch_ctl(RARCH_CTL_IS_SRAM_USED, ((void*)0)))
      return 0;

   for (i = 0; i < task_save_files->size; i++)
      content_save_ram_file(i);

   return 1;
}
