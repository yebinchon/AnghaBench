
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DIR ;


 int * opendir (char const*) ;

DIR* mz_os_open_dir(const char *path)
{
    return opendir(path);
}
