
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fill_pathname_join (char*,char const*,char const*,size_t) ;
 int fill_pathname_slash (char*,size_t) ;
 size_t strlcat (char*,char const*,size_t) ;

size_t fill_pathname_join_special_ext(char *out_path,
      const char *dir, const char *path,
      const char *last, const char *ext,
      size_t size)
{
   fill_pathname_join(out_path, dir, path, size);
   if (*out_path)
      fill_pathname_slash(out_path, size);

   strlcat(out_path, last, size);
   return strlcat(out_path, ext, size);
}
