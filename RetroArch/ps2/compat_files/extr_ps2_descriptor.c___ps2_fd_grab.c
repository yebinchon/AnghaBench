
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ref_count; } ;
typedef TYPE_1__ DescriptorTranslation ;


 int MAX_OPEN_FILES ;
 TYPE_1__** __ps2_fdmap ;
 int _lock () ;
 int _unlock () ;
 scalar_t__ is_fd_valid (int) ;

DescriptorTranslation *__ps2_fd_grab(int fd)
{
   DescriptorTranslation *map = ((void*)0);

   _lock();

   if (is_fd_valid(fd))
   {

      fd = MAX_OPEN_FILES - fd;
      map = __ps2_fdmap[fd];

      if (map)
         map->ref_count++;
   }

   _unlock();
   return map;
}
