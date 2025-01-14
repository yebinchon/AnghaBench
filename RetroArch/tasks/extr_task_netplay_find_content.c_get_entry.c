
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* path_basename (char const*) ;
 int path_remove_extension (char*) ;
 int strlcpy (char*,char const*,int) ;

__attribute__((used)) static void get_entry(char *entry, int len, const char *path)
{
   const char *buf = path_basename(path);
   entry[0] = '\0';

   strlcpy(entry, buf, len);
   path_remove_extension(entry);
}
