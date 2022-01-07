
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ref_count; int current_folder_position; int FileEntry; } ;
typedef TYPE_1__ DescriptorTranslation ;


 int _lock () ;
 int _unlock () ;
 int free (int ) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static int __ps2_fd_drop(DescriptorTranslation *map)
{
   _lock();

   if (map->ref_count == 1)
   {
      map->ref_count--;
      map->current_folder_position = -1;
      free(map->FileEntry);
      memset(map, 0, sizeof(DescriptorTranslation));
   }
   else
   {
      map->ref_count--;
   }

   _unlock();
   return 0;
}
