
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

void dir_clear(enum rarch_dir_type type)
{
   switch (type)
   {
      case 130:
         *dir_savefile = '\0';
         break;
      case 133:
         *current_savefile_dir = '\0';
         break;
      case 129:
         *dir_savestate = '\0';
         break;
      case 132:
         *current_savestate_dir = '\0';
         break;
      case 128:
         *dir_system = '\0';
         break;
      case 131:
         break;
   }
}
