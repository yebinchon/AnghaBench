
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strlcat (char*,char const*,size_t) ;
 size_t strlcpy (char*,char const*,size_t) ;
 size_t strlen (char const*) ;

size_t fill_pathname_join_delim(char *out_path, const char *dir,
      const char *path, const char delim, size_t size)
{
   size_t copied;

   if (out_path == dir)
      copied = strlen(dir);
   else
      copied = strlcpy(out_path, dir, size);

   out_path[copied] = delim;
   out_path[copied+1] = '\0';

   if (path)
      copied = strlcat(out_path, path, size);
   return copied;
}
