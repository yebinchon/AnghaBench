
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int path_stat ;
typedef int int32_t ;


 int MZ_EXIST_ERROR ;
 int MZ_OK ;
 scalar_t__ S_ISDIR (int ) ;
 int memset (struct stat*,int ,int) ;
 int stat (char const*,struct stat*) ;

int32_t mz_os_is_dir(const char *path)
{
    struct stat path_stat;

    memset(&path_stat, 0, sizeof(path_stat));
    stat(path, &path_stat);
    if (S_ISDIR(path_stat.st_mode))
        return MZ_OK;

    return MZ_EXIST_ERROR;
}
