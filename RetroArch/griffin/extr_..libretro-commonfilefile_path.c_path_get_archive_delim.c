
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* find_last_slash (char const*) ;
 char* strcasestr (char const*,char*) ;

const char *path_get_archive_delim(const char *path)
{
   const char *last = find_last_slash(path);
   const char *delim = ((void*)0);

   if (!last)
      return ((void*)0);


   delim = strcasestr(last, ".zip#");

   if (!delim)
      delim = strcasestr(last, ".apk#");

   if (delim)
      return delim + 4;


   delim = strcasestr(last, ".7z#");

   if (delim)
      return delim + 3;

   return ((void*)0);
}
