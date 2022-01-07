
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ips; int bps; int ups; int savefile; } ;
struct TYPE_5__ {TYPE_1__ name; } ;
typedef TYPE_2__ global_t ;


 int bsv_movie_set_path (int ) ;
 int fill_pathname_noext (int ,int ,char*,int) ;
 TYPE_2__ g_extern ;
 int path_init_savefile_internal () ;
 int path_main_basename ;
 scalar_t__ string_is_empty (int ) ;

__attribute__((used)) static void path_fill_names(void)
{
   global_t *global = &g_extern;

   path_init_savefile_internal();

   if (global)
      bsv_movie_set_path(global->name.savefile);

   if (string_is_empty(path_main_basename))
      return;

   if (global)
   {
      if (string_is_empty(global->name.ups))
         fill_pathname_noext(global->name.ups, path_main_basename,
               ".ups",
               sizeof(global->name.ups));

      if (string_is_empty(global->name.bps))
         fill_pathname_noext(global->name.bps, path_main_basename,
               ".bps",
               sizeof(global->name.bps));

      if (string_is_empty(global->name.ips))
         fill_pathname_noext(global->name.ips, path_main_basename,
               ".ips",
               sizeof(global->name.ips));
   }
}
