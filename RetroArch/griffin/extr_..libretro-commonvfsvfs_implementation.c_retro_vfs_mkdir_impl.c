
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int _mkdir (char const*) ;
 int _wmkdir (int *) ;
 int fileXioMkdir (char const*,int) ;
 int free (int *) ;
 int mkdir (char const*,int) ;
 int orbisMkdir (char const*,int) ;
 scalar_t__ path_mkdir_error (int) ;
 int sceIoMkdir (char const*,int) ;
 int * utf8_to_utf16_string_alloc (char const*) ;

int retro_vfs_mkdir_impl(const char *dir)
{
   int ret = mkdir(dir, 0750);


   if (path_mkdir_error(ret))
      return -2;
   return ret < 0 ? -1 : 0;
}
