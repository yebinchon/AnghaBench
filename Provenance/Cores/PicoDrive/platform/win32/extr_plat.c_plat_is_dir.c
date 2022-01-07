
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FILE_ATTRIBUTE_DIRECTORY ;
 int GetFileAttributes (char const*) ;

int plat_is_dir(const char *path)
{
 return (GetFileAttributes(path) & FILE_ATTRIBUTE_DIRECTORY) ? 1 : 0;
}
