
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_3__ {int hints; int fd; int fp; } ;
typedef TYPE_1__ libretro_vfs_implementation_file ;
typedef int int64_t ;


 int RETRO_VFS_FILE_ACCESS_HINT_FREQUENT_ACCESS ;
 int RFILE_HINT_UNBUFFERED ;
 int fwrite (void const*,int,size_t,int ) ;
 scalar_t__ orbisWrite (int ,void const*,size_t) ;
 int write (int ,void const*,size_t) ;

int64_t retro_vfs_file_write_impl(libretro_vfs_implementation_file *stream, const void *s, uint64_t len)
{
   if (!stream)
      return -1;

   if ((stream->hints & RFILE_HINT_UNBUFFERED) == 0)
   {





      return fwrite(s, 1, (size_t)len, stream->fp);

   }





   return write(stream->fd, s, (size_t)len);
}
