
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fp; } ;
typedef TYPE_1__ libretro_vfs_implementation_file ;
typedef int int64_t ;


 scalar_t__ _chsize (int ,int) ;
 int _fileno (int ) ;
 int fileno (int ) ;
 scalar_t__ ftruncate (int ,int) ;

int64_t retro_vfs_file_truncate_impl(libretro_vfs_implementation_file *stream, int64_t length)
{
   if (!stream)
      return -1;





   if (ftruncate(fileno(stream->fp), length) != 0)
      return -1;


   return 0;
}
