
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum rarch_dir_type { ____Placeholder_rarch_dir_type } rarch_dir_type ;
 int current_savefile_dir ;
 int current_savestate_dir ;
 int dir_savefile ;
 int dir_savestate ;
 int dir_system ;
 int string_is_empty (int ) ;

bool dir_is_empty(enum rarch_dir_type type)
{
   switch (type)
   {
      case 128:
         return string_is_empty(dir_system);
      case 130:
         return string_is_empty(dir_savefile);
      case 133:
         return string_is_empty(current_savefile_dir);
      case 129:
         return string_is_empty(dir_savestate);
      case 132:
         return string_is_empty(current_savestate_dir);
      case 131:
         break;
   }

   return 0;
}
