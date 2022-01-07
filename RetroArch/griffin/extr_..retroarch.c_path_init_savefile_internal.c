
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int savefile; } ;
struct TYPE_5__ {TYPE_1__ name; } ;
typedef TYPE_2__ global_t ;


 TYPE_2__ g_extern ;
 int path_deinit_savefile () ;
 int path_init_savefile_new () ;
 int path_init_savefile_rtc (int ) ;
 int path_init_subsystem () ;

__attribute__((used)) static void path_init_savefile_internal(void)
{
   path_deinit_savefile();

   path_init_savefile_new();

   if (!path_init_subsystem())
   {
      global_t *global = &g_extern;
      path_init_savefile_rtc(global->name.savefile);
   }
}
