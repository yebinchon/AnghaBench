
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef char wchar_t ;
typedef int path_buf ;
struct TYPE_7__ {int * directory; int * entry; int error; int orig_path; } ;
typedef TYPE_2__ libretro_vfs_implementation_dir ;
struct TYPE_6__ {int dwFileAttributes; } ;


 int FILE_ATTRIBUTE_HIDDEN ;
 int * FindFirstFile (char*,int **) ;
 int * FindFirstFileW (char*,int **) ;
 scalar_t__ calloc (int,int) ;
 int cellFsOpendir (char const*,int **) ;
 int dirent_check_error (TYPE_2__*) ;
 int free (char*) ;
 int * opendir (char const*) ;
 int * orbisDopen (char const*) ;
 int * ps2fileXioDopen (char const*) ;
 int retro_vfs_closedir_impl (TYPE_2__*) ;
 int * sceIoDopen (char const*) ;
 int strdup (char const*) ;
 int string_is_empty (char const*) ;
 size_t strlcpy (char*,char const*,int) ;
 unsigned int strlen (char const*) ;
 char* utf8_to_local_string_alloc (char*) ;
 char* utf8_to_utf16_string_alloc (char*) ;

libretro_vfs_implementation_dir *retro_vfs_opendir_impl(
      const char *name, bool include_hidden)
{
   libretro_vfs_implementation_dir *rdir;


   if (!name || (*name == 0))
      return ((void*)0);


   rdir = (libretro_vfs_implementation_dir*)calloc(1, sizeof(*rdir));
   if (!rdir)
      return ((void*)0);

   rdir->orig_path = strdup(name);
   rdir->directory = opendir(name);
   rdir->entry = ((void*)0);
   if (rdir->directory && !dirent_check_error(rdir))
      return rdir;

   retro_vfs_closedir_impl(rdir);
   return ((void*)0);
}
