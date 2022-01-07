
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ directory; struct TYPE_4__* orig_path; int error; } ;
typedef TYPE_1__ libretro_vfs_implementation_dir ;


 int FindClose (scalar_t__) ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int cellFsClosedir (scalar_t__) ;
 int closedir (scalar_t__) ;
 int free (TYPE_1__*) ;
 int orbisDclose (scalar_t__) ;
 int ps2fileXioDclose (scalar_t__) ;
 int sceIoDclose (scalar_t__) ;

int retro_vfs_closedir_impl(libretro_vfs_implementation_dir *rdir)
{
   if (!rdir)
      return -1;
   if (rdir->directory)
      closedir(rdir->directory);


   if (rdir->orig_path)
      free(rdir->orig_path);
   free(rdir);
   return 0;
}
