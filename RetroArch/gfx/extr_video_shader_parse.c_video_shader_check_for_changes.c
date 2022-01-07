
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int file_change_data ;
 int frontend_driver_check_for_path_changes (int ) ;

bool video_shader_check_for_changes(void)
{
   if (!file_change_data)
      return 0;

   return frontend_driver_check_for_path_changes(file_change_data);
}
