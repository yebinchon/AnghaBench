
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vfs_cdrom_t ;
struct TYPE_3__ {int const cdrom; } ;
typedef TYPE_1__ libretro_vfs_implementation_file ;



const vfs_cdrom_t* retro_vfs_file_get_cdrom_position(const libretro_vfs_implementation_file *stream)
{
   return &stream->cdrom;
}
