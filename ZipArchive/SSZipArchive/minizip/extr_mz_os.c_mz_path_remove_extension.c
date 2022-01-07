
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int MZ_OK ;
 int MZ_PARAM_ERROR ;
 int strlen (char*) ;

int32_t mz_path_remove_extension(char *path)
{
    char *path_ptr = ((void*)0);

    if (path == ((void*)0))
        return MZ_PARAM_ERROR;

    path_ptr = path + strlen(path) - 1;

    while (path_ptr > path)
    {
        if ((*path_ptr == '/') || (*path_ptr == '\\'))
            break;
        if (*path_ptr == '.')
        {
            *path_ptr = 0;
            break;
        }

        path_ptr -= 1;
    }

    if (path_ptr == path)
        *path_ptr = 0;

    return MZ_OK;
}
