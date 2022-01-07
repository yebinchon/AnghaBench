
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int MZ_BUF_ERROR ;
 int MZ_OK ;
 int strlen (char*) ;

int32_t mz_path_append_slash(char *path, int32_t max_path, char slash)
{
    int32_t path_len = (int32_t)strlen(path);
    if ((path_len + 2) >= max_path)
        return MZ_BUF_ERROR;
    if (path[path_len - 1] != '\\' && path[path_len - 1] != '/')
    {
        path[path_len] = slash;
        path[path_len + 1] = 0;
    }
    return MZ_OK;
}
