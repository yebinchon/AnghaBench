
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tm {int tm_hour; int tm_mon; int tm_mday; int tm_year; int tm_min; } ;
struct stat {int st_mode; int st_mtime; scalar_t__ st_size; } ;
struct dirent {char* d_name; } ;


 int FALSE ;
 int FILENAME_MAX ;
 int S_ISDIR (int) ;
 int S_IWRITE ;
 int TRUE ;
 int Util_catpath (char*,int ,char*) ;
 int closedir (int *) ;
 int dir_path ;
 int * dp ;
 char* filename_pattern ;
 struct tm* localtime (int *) ;
 scalar_t__ match (char*,char*) ;
 struct dirent* readdir (int *) ;
 int sprintf (char*,char*,int,int,int,int,int,char) ;
 scalar_t__ stat (char*,struct stat*) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static int Devices_ReadDir(char *fullpath, char *filename, int *isdir,
                          int *readonly, int *size, char *timetext)
{
 struct dirent *entry;
 char temppath[FILENAME_MAX];



 for (;;) {
  entry = readdir(dp);
  if (entry == ((void*)0)) {
   closedir(dp);
   dp = ((void*)0);
   return FALSE;
  }
  if (entry->d_name[0] == '.') {

   if (filename_pattern[0] != '.')
    continue;

   if (entry->d_name[1] == '\0')
    continue;

   if (entry->d_name[1] == '.' && entry->d_name[2] == '\0')
    continue;
  }
  if (match(filename_pattern, entry->d_name))
   break;
 }
 if (filename != ((void*)0))
  strcpy(filename, entry->d_name);
 Util_catpath(temppath, dir_path, entry->d_name);
 if (fullpath != ((void*)0))
  strcpy(fullpath, temppath);
 {
  if (isdir != ((void*)0))
   *isdir = FALSE;
  if (readonly != ((void*)0))
   *readonly = FALSE;
  if (size != ((void*)0))
   *size = 0;
  if (timetext != ((void*)0))
   strcpy(timetext, " 1-01-01 12:00p");
 }
 return TRUE;
}
