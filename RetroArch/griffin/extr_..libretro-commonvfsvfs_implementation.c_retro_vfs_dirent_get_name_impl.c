
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_2__* entry; } ;
typedef TYPE_3__ libretro_vfs_implementation_dir ;
struct TYPE_6__ {char const* d_name; } ;
struct TYPE_5__ {char* cFileName; char const* d_name; char const* name; } ;


 int free (char*) ;
 char* local_to_utf8_string_alloc (char*) ;
 int memset (char*,int ,int) ;
 int strlcpy (char*,char*,int) ;
 char* utf16_to_utf8_string_alloc (char*) ;

const char *retro_vfs_dirent_get_name_impl(libretro_vfs_implementation_dir *rdir)
{
   if (!rdir || !rdir->entry)
      return ((void*)0);
   return rdir->entry->d_name;

}
