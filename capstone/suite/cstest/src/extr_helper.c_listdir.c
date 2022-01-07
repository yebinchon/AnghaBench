
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {scalar_t__ d_type; char* d_name; } ;
typedef int path ;
typedef int DIR ;


 scalar_t__ DT_DIR ;
 int closedir (int *) ;
 scalar_t__ malloc (int) ;
 int * opendir (char const*) ;
 struct dirent* readdir (int *) ;
 scalar_t__ realloc (char**,int) ;
 int snprintf (char*,int,char*,char const*,char*) ;
 int sprintf (char*,char*,char const*,char const*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char const*) ;

void listdir(const char *name, char ***files, int *num_files)
{
 DIR *dir;
 struct dirent *entry;
 int cnt;

 if (!(dir = opendir(name)))
  return;

 while ((entry = readdir(dir)) != ((void*)0)) {
  if (entry->d_type == DT_DIR) {
   char path[1024];
   if (strcmp(entry->d_name, ".") == 0 || strcmp(entry->d_name, "..") == 0)
    continue;
   snprintf(path, sizeof(path), "%s/%s", name, entry->d_name);
   listdir(path, files, num_files);
  } else {
   cnt = *num_files;
   *files = (char **)realloc(*files, sizeof(char *) * (cnt + 1));
   (*files)[cnt] = (char *)malloc(sizeof(char) * ( strlen(name) + 1 + strlen(entry->d_name) + 10));
   sprintf((*files)[cnt], "%s/%s", name, entry->d_name);
   cnt ++;
   *num_files = cnt;
  }
 }

 closedir(dir);
}
