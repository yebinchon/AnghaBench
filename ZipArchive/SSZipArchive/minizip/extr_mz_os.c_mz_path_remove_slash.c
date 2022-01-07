
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int MZ_OK ;
 int strlen (char*) ;

int32_t mz_path_remove_slash(char *path)
{
    int32_t path_len = (int32_t)strlen(path);
    while (path_len > 0)
    {
        if (path[path_len - 1] == '\\' || path[path_len - 1] == '/')
            path[path_len - 1] = 0;
        else
            break;

        path_len -= 1;
    }
    return MZ_OK;
}
