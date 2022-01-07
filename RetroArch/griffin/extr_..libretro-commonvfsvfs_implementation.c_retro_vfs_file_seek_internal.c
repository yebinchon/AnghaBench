
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int off_t ;
struct TYPE_4__ {int hints; scalar_t__ scheme; int mappos; int mapsize; int fd; scalar_t__ mapped; int fp; } ;
typedef TYPE_1__ libretro_vfs_implementation_file ;
typedef int int64_t ;


 int RETRO_VFS_FILE_ACCESS_HINT_FREQUENT_ACCESS ;
 int RFILE_HINT_UNBUFFERED ;



 scalar_t__ VFS_SCHEME_CDROM ;
 int _fseeki64 (int ,int,int) ;
 int fileXioLseek (int ,int ,int) ;
 int fileno (int ) ;
 int fseek (int ,long,int) ;
 int fseeko (int ,int ,int) ;
 scalar_t__ lseek (int ,int,int) ;
 int orbisLseek (int ,int,int) ;
 int retro_vfs_file_seek_cdrom (TYPE_1__*,int,int) ;

int64_t retro_vfs_file_seek_internal(libretro_vfs_implementation_file *stream, int64_t offset, int whence)
{
   if (!stream)
      return -1;

   if ((stream->hints & RFILE_HINT_UNBUFFERED) == 0)
   {
      return fseeko(stream->fp, (off_t)offset, whence);

   }
   if (lseek(stream->fd, offset, whence) < 0)
      return -1;

   return 0;
}
