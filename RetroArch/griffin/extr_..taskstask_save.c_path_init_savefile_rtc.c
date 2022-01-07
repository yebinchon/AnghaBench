
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






union string_list_elem_attr {int i; } ;


 int PATH_MAX_LENGTH ;
 int RETRO_MEMORY_RTC ;
 int RETRO_MEMORY_SAVE_RAM ;
 int fill_pathname (char*,char const*,char*,int) ;
 int free (char*) ;
 scalar_t__ malloc (int) ;
 int string_list_append (int ,char const*,union string_list_elem_attr) ;
 int task_save_files ;

void path_init_savefile_rtc(const char *savefile_path)
{
   union string_list_elem_attr attr;
   char *savefile_name_rtc = (char*)
      malloc(PATH_MAX_LENGTH * sizeof(char));

   savefile_name_rtc[0] = '\0';

   attr.i = RETRO_MEMORY_SAVE_RAM;
   string_list_append(task_save_files, savefile_path, attr);


   attr.i = RETRO_MEMORY_RTC;
   fill_pathname(savefile_name_rtc,
         savefile_path, ".rtc",
         PATH_MAX_LENGTH * sizeof(char));
   string_list_append(task_save_files, savefile_name_rtc, attr);
   free(savefile_name_rtc);
}
