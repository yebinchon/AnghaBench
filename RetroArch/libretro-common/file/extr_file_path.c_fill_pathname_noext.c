
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strlcat (char*,char const*,size_t) ;
 int strlcpy (char*,char const*,size_t) ;

size_t fill_pathname_noext(char *out_path, const char *in_path,
      const char *replace, size_t size)
{
   strlcpy(out_path, in_path, size);
   return strlcat(out_path, replace, size);
}
