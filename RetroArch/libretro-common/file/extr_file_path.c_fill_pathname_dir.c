
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fill_pathname_slash (char*,size_t) ;
 char* path_basename (char const*) ;
 size_t strlcat (char*,char const*,size_t) ;

size_t fill_pathname_dir(char *in_dir, const char *in_basename,
      const char *replace, size_t size)
{
   const char *base = ((void*)0);

   fill_pathname_slash(in_dir, size);
   base = path_basename(in_basename);
   strlcat(in_dir, base, size);
   return strlcat(in_dir, replace, size);
}
