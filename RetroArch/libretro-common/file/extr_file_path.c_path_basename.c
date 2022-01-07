
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* find_last_slash (char const*) ;
 char* path_get_archive_delim (char const*) ;

const char *path_basename(const char *path)
{

   const char *delim = path_get_archive_delim(path);
   if (delim)
      return delim + 1;

   {

      const char *last = find_last_slash(path);
      if (last)
         return last + 1;
   }

   return path;
}
