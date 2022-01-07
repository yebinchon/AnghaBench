
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int MZ_OK ;
 scalar_t__ strlen (char*) ;

int32_t mz_path_convert_slashes(char *path, char slash)
{
    int32_t i = 0;

    for (i = 0; i < (int32_t)strlen(path); i += 1)
    {
        if (path[i] == '\\' || path[i] == '/')
            path[i] = slash;
    }
    return MZ_OK;
}
