
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int FileEntry; int items; scalar_t__ current_folder_position; } ;
typedef TYPE_1__ DescriptorTranslation ;


 int __ps2_acquire_descriptor () ;
 TYPE_1__* __ps2_fd_grab (int) ;
 int listcdvd (char const*,int ) ;
 scalar_t__ prepareCDVD () ;

__attribute__((used)) static int fileXioCDDopen(const char *name)
{
   int fd = -1;
   if (prepareCDVD()){
      fd = __ps2_acquire_descriptor();
      DescriptorTranslation *descriptor = __ps2_fd_grab(fd);
      descriptor->current_folder_position = 0;
      descriptor->items = listcdvd(name, descriptor->FileEntry);
   }
   return fd;
}
