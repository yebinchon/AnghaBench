
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fill_pathname_join_delim (char*,char const*,char const*,char const,size_t) ;
 size_t strlcat (char*,char const*,size_t) ;

size_t fill_pathname_join_delim_concat(char *out_path, const char *dir,
      const char *path, const char delim, const char *concat,
      size_t size)
{
   fill_pathname_join_delim(out_path, dir, path, delim, size);
   return strlcat(out_path, concat, size);
}
