
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int hints; scalar_t__ scheme; int mappos; int fd; scalar_t__ mapped; int fp; } ;
typedef TYPE_1__ libretro_vfs_implementation_file ;
typedef int int64_t ;


 int RETRO_VFS_FILE_ACCESS_HINT_FREQUENT_ACCESS ;
 int RFILE_HINT_UNBUFFERED ;
 int SEEK_CUR ;
 scalar_t__ VFS_SCHEME_CDROM ;
 int _ftelli64 (int ) ;
 int ftell (int ) ;
 scalar_t__ lseek (int ,int ,int ) ;
 int orbisLseek (int ,int ,int ) ;
 int retro_vfs_file_tell_cdrom (TYPE_1__*) ;

int64_t retro_vfs_file_tell_impl(libretro_vfs_implementation_file *stream)
{
   if (!stream)
      return -1;

   if ((stream->hints & RFILE_HINT_UNBUFFERED) == 0)
   {
      return ftell(stream->fp);


   }






   if (lseek(stream->fd, 0, SEEK_CUR) < 0)
      return -1;

   return 0;
}
