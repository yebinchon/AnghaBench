
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {int dummy; } ;
typedef int DIR ;


 struct dirent* readdir (int *) ;

struct dirent* mz_os_read_dir(DIR *dir)
{
    if (dir == ((void*)0))
        return ((void*)0);
    return readdir(dir);
}
