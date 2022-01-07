
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DIR ;


 int closedir (int *) ;
 int * opendir (char const*) ;

int plat_is_dir(const char *path)
{
 DIR *dir;
 if ((dir = opendir(path))) {
  closedir(dir);
  return 1;
 }
 return 0;
}
