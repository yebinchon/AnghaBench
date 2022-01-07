
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
struct dirent {int d_name; } ;


 int FALSE ;
 int FILENAME_MAX ;
 int S_ISDIR (int ) ;
 int TRUE ;
 int Util_catpath (char*,int ,int ) ;
 int closedir (int *) ;
 int dir_path ;
 int * dp ;
 struct dirent* readdir (int *) ;
 int stat (char*,struct stat*) ;
 int strcpy (char*,int ) ;

__attribute__((used)) static int BasicUIReadDir(char *filename, int *isdir)
{
 struct dirent *entry;
 char fullfilename[FILENAME_MAX];
 struct stat st;
 entry = readdir(dp);
 if (entry == ((void*)0)) {
  closedir(dp);
  dp = ((void*)0);
  return FALSE;
 }
 strcpy(filename, entry->d_name);
 Util_catpath(fullfilename, dir_path, entry->d_name);
 stat(fullfilename, &st);
 *isdir = S_ISDIR(st.st_mode);
 return TRUE;
}
