
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Util_splitpath (char const*,int ,int ) ;
 int closedir (int *) ;
 int dir_path ;
 int * dp ;
 int filename_pattern ;
 int * opendir (int ) ;

__attribute__((used)) static int Devices_OpenDir(const char *filename)
{
 Util_splitpath(filename, dir_path, filename_pattern);
 if (dp != ((void*)0))
  closedir(dp);
 dp = opendir(dir_path);
 return dp != ((void*)0);
}
