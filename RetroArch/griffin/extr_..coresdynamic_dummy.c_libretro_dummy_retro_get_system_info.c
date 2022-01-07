
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct retro_system_info {char* library_name; char* library_version; int need_fullpath; char* valid_extensions; } ;


 int memset (struct retro_system_info*,int ,int) ;

void libretro_dummy_retro_get_system_info(
      struct retro_system_info *info)
{
   memset(info, 0, sizeof(*info));
   info->library_name = "";
   info->library_version = "";
   info->need_fullpath = 0;
   info->valid_extensions = "";
}
