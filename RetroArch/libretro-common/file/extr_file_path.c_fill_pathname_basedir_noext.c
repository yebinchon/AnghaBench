
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fill_pathname_basedir (char*,char const*,size_t) ;
 int path_remove_extension (char*) ;

void fill_pathname_basedir_noext(char *out_dir,
      const char *in_path, size_t size)
{
   fill_pathname_basedir(out_dir, in_path, size);
   path_remove_extension(out_dir);
}
