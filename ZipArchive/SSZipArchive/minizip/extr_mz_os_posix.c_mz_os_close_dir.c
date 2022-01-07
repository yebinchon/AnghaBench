
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int DIR ;


 int MZ_INTERNAL_ERROR ;
 int MZ_OK ;
 int MZ_PARAM_ERROR ;
 int closedir (int *) ;

int32_t mz_os_close_dir(DIR *dir)
{
    if (dir == ((void*)0))
        return MZ_PARAM_ERROR;
    if (closedir(dir) == -1)
        return MZ_INTERNAL_ERROR;
    return MZ_OK;
}
