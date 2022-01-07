
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int MZ_EXIST_ERROR ;
 int MZ_OK ;
 int rename (char const*,char const*) ;

int32_t mz_os_rename(const char *source_path, const char *target_path)
{
    if (rename(source_path, target_path) == -1)
        return MZ_EXIST_ERROR;

    return MZ_OK;
}
