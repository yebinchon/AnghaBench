
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32_t ;


 scalar_t__ MZ_EXIST_ERROR ;
 scalar_t__ MZ_OK ;
 scalar_t__ readlink (char const*,char*,scalar_t__) ;

int32_t mz_os_read_symlink(const char *path, char *target_path, int32_t max_target_path)
{
    size_t length = 0;

    length = (size_t)readlink(path, target_path, max_target_path - 1);
    if (length == (size_t)-1)
        return MZ_EXIST_ERROR;

    target_path[length] = 0;
    return MZ_OK;
}
