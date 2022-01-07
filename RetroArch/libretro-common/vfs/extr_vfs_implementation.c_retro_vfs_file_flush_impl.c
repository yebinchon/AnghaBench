
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fp; } ;
typedef TYPE_1__ libretro_vfs_implementation_file ;


 scalar_t__ fflush (int ) ;

int retro_vfs_file_flush_impl(libretro_vfs_implementation_file *stream)
{
   if (!stream)
      return -1;



   return fflush(stream->fp) == 0 ? 0 : -1;

}
