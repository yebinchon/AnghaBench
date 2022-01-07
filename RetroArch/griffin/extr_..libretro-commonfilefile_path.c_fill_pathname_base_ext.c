
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fill_pathname_base_noext (char*,char const*,size_t) ;
 size_t strlcat (char*,char const*,size_t) ;

size_t fill_pathname_base_ext(char *out,
      const char *in_path, const char *ext,
      size_t size)
{
   fill_pathname_base_noext(out, in_path, size);
   return strlcat(out, ext, size);
}
