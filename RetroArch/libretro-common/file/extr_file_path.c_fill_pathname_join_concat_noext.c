
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fill_pathname_noext (char*,char const*,char const*,size_t) ;
 size_t strlcat (char*,char const*,size_t) ;

size_t fill_pathname_join_concat_noext(char *out_path,
      const char *dir, const char *path,
      const char *concat,
      size_t size)
{
   fill_pathname_noext(out_path, dir, path, size);
   return strlcat(out_path, concat, size);
}
