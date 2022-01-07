
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int MZ_EXIST_ERROR ;
 int MZ_OK ;
 int strlen (char const*) ;

int32_t mz_path_has_slash(const char *path)
{
    int32_t path_len = (int32_t)strlen(path);
    if (path[path_len - 1] != '\\' && path[path_len - 1] != '/')
        return MZ_EXIST_ERROR;
    return MZ_OK;
}
