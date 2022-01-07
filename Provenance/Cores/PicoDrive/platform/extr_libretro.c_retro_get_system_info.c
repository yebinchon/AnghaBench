
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct retro_system_info {char* library_name; char* valid_extensions; int need_fullpath; int library_version; } ;


 int VERSION ;
 int memset (struct retro_system_info*,int ,int) ;

void retro_get_system_info(struct retro_system_info *info)
{
 memset(info, 0, sizeof(*info));
 info->library_name = "PicoDrive";
 info->library_version = VERSION;
 info->valid_extensions = "bin|gen|smd|md|32x|cue|iso|sms";
 info->need_fullpath = 1;
}
