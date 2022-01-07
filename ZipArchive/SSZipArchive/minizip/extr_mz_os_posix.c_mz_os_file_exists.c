
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;
typedef int path_stat ;
typedef int int32_t ;


 int MZ_EXIST_ERROR ;
 int MZ_OK ;
 int memset (struct stat*,int ,int) ;
 scalar_t__ stat (char const*,struct stat*) ;

int32_t mz_os_file_exists(const char *path)
{
    struct stat path_stat;

    memset(&path_stat, 0, sizeof(path_stat));
    if (stat(path, &path_stat) == 0)
        return MZ_OK;
    return MZ_EXIST_ERROR;
}
