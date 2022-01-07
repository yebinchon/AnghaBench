
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_3__ {int next; scalar_t__ directory; int * entry; int error; } ;
typedef TYPE_1__ libretro_vfs_implementation_dir ;
typedef int * iox_dirent_t ;


 scalar_t__ FindNextFile (scalar_t__,int **) ;
 scalar_t__ FindNextFileW (scalar_t__,int **) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int cellFsReaddir (scalar_t__,int **,scalar_t__*) ;
 scalar_t__ orbisDread (scalar_t__,int **) ;
 int ps2fileXioDread (scalar_t__,int **) ;
 int * readdir (scalar_t__) ;
 scalar_t__ sceIoDread (scalar_t__,int **) ;

bool retro_vfs_readdir_impl(libretro_vfs_implementation_dir *rdir)
{
   return ((rdir->entry = readdir(rdir->directory)) != ((void*)0));

}
