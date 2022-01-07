
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const Util_DIR_SEP_CHAR ;
 int memcpy (char*,char const*,int) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;

void Util_splitpath(const char *path, char *dir_part, char *file_part)
{
 const char *p;

 for (p = path + strlen(path) - 2; p >= path; p--) {
  if (*p == Util_DIR_SEP_CHAR




     ) {
   if (dir_part != ((void*)0)) {
    int len = p - path;
    if (p == path || (p == path + 2 && path[1] == ':'))

     len++;
    memcpy(dir_part, path, len);
    dir_part[len] = '\0';
   }
   if (file_part != ((void*)0))
    strcpy(file_part, p + 1);
   return;
  }
 }

 if (dir_part != ((void*)0))
  dir_part[0] = '\0';
 if (file_part != ((void*)0))
  strcpy(file_part, path);
}
