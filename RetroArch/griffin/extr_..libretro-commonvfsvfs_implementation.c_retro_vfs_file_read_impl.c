
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_4__ {int hints; scalar_t__ scheme; size_t mappos; size_t mapsize; int fd; int * mapped; int fp; } ;
typedef TYPE_1__ libretro_vfs_implementation_file ;
typedef int int64_t ;


 int RETRO_VFS_FILE_ACCESS_HINT_FREQUENT_ACCESS ;
 int RFILE_HINT_UNBUFFERED ;
 scalar_t__ VFS_SCHEME_CDROM ;
 int fread (void*,int,size_t,int ) ;
 int memcpy (void*,int *,scalar_t__) ;
 scalar_t__ orbisRead (int ,void*,size_t) ;
 int read (int ,void*,size_t) ;
 int retro_vfs_file_read_cdrom (TYPE_1__*,void*,scalar_t__) ;

int64_t retro_vfs_file_read_impl(libretro_vfs_implementation_file *stream,
      void *s, uint64_t len)
{
   if (!stream || !s)
      return -1;

   if ((stream->hints & RFILE_HINT_UNBUFFERED) == 0)
   {
      return fread(s, 1, (size_t)len, stream->fp);

   }
   return read(stream->fd, s, (size_t)len);
}
