
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int MZ_INTERNAL_ERROR ;
 int MZ_OK ;
 scalar_t__ symlink (char const*,char const*) ;

int32_t mz_os_make_symlink(const char *path, const char *target_path)
{
    if (symlink(target_path, path) != 0)
        return MZ_INTERNAL_ERROR;
    return MZ_OK;
}
