
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum rarch_dir_type { ____Placeholder_rarch_dir_type } rarch_dir_type ;
 char* current_savefile_dir ;
 char* current_savestate_dir ;
 char* dir_savefile ;
 char* dir_savestate ;
 char* dir_system ;

char *dir_get_ptr(enum rarch_dir_type type)
{
   switch (type)
   {
      case 130:
         return dir_savefile;
      case 133:
         return current_savefile_dir;
      case 129:
         return dir_savestate;
      case 132:
         return current_savestate_dir;
      case 128:
         return dir_system;
      case 131:
         break;
   }

   return ((void*)0);
}
