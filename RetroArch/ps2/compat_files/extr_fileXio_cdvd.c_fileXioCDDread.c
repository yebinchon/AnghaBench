
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int mode; } ;
struct TYPE_9__ {TYPE_2__ stat; int name; } ;
typedef TYPE_3__ iox_dirent_t ;
struct TYPE_10__ {size_t current_folder_position; size_t items; TYPE_1__* FileEntry; } ;
struct TYPE_7__ {scalar_t__ dircheck; int filename; } ;
typedef TYPE_4__ DescriptorTranslation ;


 int FIO_S_IFDIR ;
 int FIO_S_IFREG ;
 TYPE_4__* __ps2_fd_grab (int) ;
 int strcpy (int ,int ) ;

__attribute__((used)) static int fileXioCDDread(int fd, iox_dirent_t *dirent)
{
   DescriptorTranslation *descriptor = __ps2_fd_grab(fd);

   if (descriptor && descriptor->current_folder_position < descriptor->items) {
      strcpy(dirent->name, descriptor->FileEntry[descriptor->current_folder_position].filename);
      if (descriptor->FileEntry[descriptor->current_folder_position].dircheck) {
         dirent->stat.mode = FIO_S_IFDIR;
      } else {
         dirent->stat.mode = FIO_S_IFREG;
      }
      descriptor->current_folder_position++;
   } else {
      descriptor->current_folder_position = 0;
      return 0;
   }

   return 1;
}
