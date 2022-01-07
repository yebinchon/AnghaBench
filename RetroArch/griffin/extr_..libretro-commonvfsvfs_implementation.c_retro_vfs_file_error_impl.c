
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ scheme; int fp; } ;
typedef TYPE_1__ libretro_vfs_implementation_file ;


 scalar_t__ VFS_SCHEME_CDROM ;
 int ferror (int ) ;
 int retro_vfs_file_error_cdrom (TYPE_1__*) ;

int retro_vfs_file_error_impl(libretro_vfs_implementation_file *stream)
{
   return ferror(stream->fp);

}
