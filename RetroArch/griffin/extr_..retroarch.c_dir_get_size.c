
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum rarch_dir_type { ____Placeholder_rarch_dir_type } rarch_dir_type ;
typedef int dir_system ;
typedef int dir_savestate ;
typedef int dir_savefile ;
typedef int current_savestate_dir ;
typedef int current_savefile_dir ;
size_t dir_get_size(enum rarch_dir_type type)
{
   switch (type)
   {
      case 128:
         return sizeof(dir_system);
      case 129:
         return sizeof(dir_savestate);
      case 132:
         return sizeof(current_savestate_dir);
      case 130:
         return sizeof(dir_savefile);
      case 133:
         return sizeof(current_savefile_dir);
      case 131:
         break;
   }

   return 0;
}
