
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RDIR {int dummy; } ;


 scalar_t__ dirent_opendir_cb (char const*,int) ;
 scalar_t__ retro_vfs_opendir_impl (char const*,int) ;

struct RDIR *retro_opendir_include_hidden(const char *name, bool include_hidden)
{
   if (dirent_opendir_cb != ((void*)0))
      return (struct RDIR *)dirent_opendir_cb(name, include_hidden);
   return (struct RDIR *)retro_vfs_opendir_impl(name, include_hidden);
}
