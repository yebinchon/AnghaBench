
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FILENAME_MAX ;
 int Util_strlcpy (int ,char const*,int ) ;
 int dir_path ;
 int * dp ;
 int * opendir (int ) ;

__attribute__((used)) static int BasicUIOpenDir(const char *dirname)
{
 Util_strlcpy(dir_path, dirname, FILENAME_MAX);
 dp = opendir(dir_path);
 return dp != ((void*)0);
}
