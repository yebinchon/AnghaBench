
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct retro_system_info {scalar_t__ valid_extensions; scalar_t__ library_version; scalar_t__ library_name; } ;


 int free (void*) ;
 int memset (struct retro_system_info*,int ,int) ;

void libretro_free_system_info(struct retro_system_info *info)
{
   if (!info)
      return;

   free((void*)info->library_name);
   free((void*)info->library_version);
   free((void*)info->valid_extensions);
   memset(info, 0, sizeof(*info));
}
