
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ directory; scalar_t__ error; } ;
typedef TYPE_1__ libretro_vfs_implementation_dir ;


 scalar_t__ CELL_FS_SUCCEEDED ;
 scalar_t__ INVALID_HANDLE_VALUE ;

__attribute__((used)) static bool dirent_check_error(libretro_vfs_implementation_dir *rdir)
{







   return !(rdir->directory);

}
