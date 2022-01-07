
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct retro_system_info {char* library_name; char* library_version; char* valid_extensions; int block_extract; int need_fullpath; } ;



void retro_get_system_info(struct retro_system_info *info)
{
   info->library_name = "Genesis Plus GX";
   info->library_version = "v1.7.4";
   info->valid_extensions = "md|smd|bin|cue|gen|zip|MD|SMD|bin|iso|ISO|CUE|GEN|ZIP|sms|SMS|gg|GG|sg|SG";
   info->block_extract = 0;
   info->need_fullpath = 1;
}
