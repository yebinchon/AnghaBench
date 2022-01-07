
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct stat {int st_mode; } ;
typedef int path_stat ;
typedef int int32_t ;


 int MZ_INTERNAL_ERROR ;
 int MZ_OK ;
 int lstat (char const*,struct stat*) ;
 int memset (struct stat*,int ,int) ;

int32_t mz_os_get_file_attribs(const char *path, uint32_t *attributes)
{
    struct stat path_stat;
    int32_t err = MZ_OK;

    memset(&path_stat, 0, sizeof(path_stat));
    if (lstat(path, &path_stat) == -1)
        err = MZ_INTERNAL_ERROR;
    *attributes = path_stat.st_mode;
    return err;
}
