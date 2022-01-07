
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int libretro_vfs_implementation_file ;
struct TYPE_3__ {scalar_t__ hfile; } ;
typedef TYPE_1__ RFILE ;



libretro_vfs_implementation_file* filestream_get_vfs_handle(RFILE *stream)
{
   return (libretro_vfs_implementation_file*)stream->hfile;
}
