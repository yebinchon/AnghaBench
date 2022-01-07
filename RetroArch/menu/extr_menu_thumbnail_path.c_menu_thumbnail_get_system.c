
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* system; } ;
typedef TYPE_1__ menu_thumbnail_path_data_t ;


 scalar_t__ string_is_empty (char*) ;

bool menu_thumbnail_get_system(
      menu_thumbnail_path_data_t *path_data, const char **system)
{
   if (!path_data)
      return 0;

   if (!system)
      return 0;

   if (string_is_empty(path_data->system))
      return 0;

   *system = path_data->system;

   return 1;
}
