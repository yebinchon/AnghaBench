
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* path_basename (char const*) ;
 size_t strlcpy (char*,char const*,size_t) ;

size_t fill_pathname_base(char *out, const char *in_path, size_t size)
{
   const char *ptr = path_basename(in_path);

   if (!ptr)
      ptr = in_path;

   return strlcpy(out, ptr, size);
}
